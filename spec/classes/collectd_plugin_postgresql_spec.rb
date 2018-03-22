require 'spec_helper'

describe 'collectd::plugin::postgresql', type: :class do
  on_supported_os(test_on).each do |os, facts|
    context "on #{os} " do
      let :facts do
        facts
      end
      let :pre_condition do
        'include collectd'
      end

      options = os_specific_options(facts)

      context ':ensure => present and default parameters' do
        it "Will create #{options[:plugin_conf_dir]}/01-postgresql.conf to load the plugin" do
          is_expected.to contain_file('postgresql.load').with(
            ensure: 'present',
            path: "#{options[:plugin_conf_dir]}/10-postgresql.conf",
            content: %r{LoadPlugin postgresql}
          )
        end
        it "Will create #{options[:plugin_conf_dir]}/postgresql-config.conf" do
          is_expected.to contain_concat("#{options[:plugin_conf_dir]}/postgresql-config.conf").that_requires('File[collectd.d]')
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_header').with(content: %r{<Plugin postgresql>})
        end
      end
      context ':ensure => present and create a db with a custom query' do
        let(:params) do
          {
            databases: {
              'postgres' => {
                'host'     => 'localhost',
                'user'     => 'postgres',
                'password' => 'postgres',
                'sslmode'  => 'disable',
                'query'    => %w[disk_io log_delay]
              }
            },
            queries: {
              'log_delay' => {
                'statement' => 'SELECT * FROM log_delay_repli;',
                'params'    => ['database'],
                'results'   => [{
                  'type'           => 'gauge',
                  'instanceprefix' => 'log_delay',
                  'instancesfrom'  => 'inet_server_port',
                  'valuesfrom'     => 'log_delay'
                }]
              }
            },
            writers: {
              'sqlstore' => {
                'statement'  => 'SELECT collectd_insert($1, $2, $3, $4, $5, $6, $7, $8, $9);',
                'storerates' => true
              }
            }
          }
        end

        it "Will create #{options[:plugin_conf_dir]}/postgresql-config.conf" do
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_db_postgres').with(content: %r{Host \"localhost\"})
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_db_postgres').with(content: %r{Query \"disk_io\"})
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_query_log_delay').with(content: %r{Statement \"SELECT \* FROM log_delay_repli;\"\n})
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_query_log_delay').with(content: %r{<Result>\n})
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_query_log_delay').with(content: %r{Param \"database\"})
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_writer_sqlstore').with(content: %r{<Writer sqlstore>\n})
        end
      end

      context ':ensure => present and pool two db with the same name on different ports' do
        let(:params) do
          {
            databases: {
              'postgres_port_5432' => {
                'instance' => 'postgres',
                'host'     => 'localhost',
                'user'     => 'postgres',
                'password' => 'postgres',
                'port'     => '5432',
                'sslmode'  => 'disable',
                'query'    => %w[disk_io log_delay]
              },
              'postgres_port_5433' => {
                'instance' => 'postgres',
                'host'     => 'localhost',
                'user'     => 'postgres',
                'password' => 'postgres',
                'port'     => '5433',
                'sslmode'  => 'disable',
                'query'    => %w[disk_io log_delay]

              }
            }
          }
        end

        it "'Will create #{options[:plugin_conf_dir]}/postgresql-config.conf" do
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_db_postgres_port_5432').with(
            content: %r{Instance \"postgres\"}
          )
          is_expected.to contain_concat__fragment('collectd_plugin_postgresql_conf_db_postgres_port_5433').with(
            content: %r{Instance \"postgres\"}
          )
        end
      end
    end
  end
end
