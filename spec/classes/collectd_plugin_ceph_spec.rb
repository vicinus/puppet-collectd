require 'spec_helper'

describe 'collectd::plugin::ceph', type: :class do
  on_supported_os(test_on).each do |os, facts|
    context "on #{os} " do
      let :facts do
        facts
      end

      options = os_specific_options(facts)

      context ':ensure => present and :daemons => [ \'ceph-osd.0\, \ceph-osd.1\, \ceph-osd.2\, \test-osd.0\, \ceph-mon.mon01\ ]' do
        let :params do
          { daemons: ['ceph-osd.0', 'ceph-osd.1', 'ceph-osd.2', 'test-osd.0', 'ceph-mon.mon01'] }
        end

        content = <<EOS
<Plugin ceph>
  LongRunAvgLatency false
  ConvertSpecialMetricTypes true

  <Daemon "ceph-osd.0">
    SocketPath "/var/run/ceph/ceph-osd.0.asok"
  </Daemon>
  <Daemon "ceph-osd.1">
    SocketPath "/var/run/ceph/ceph-osd.1.asok"
  </Daemon>
  <Daemon "ceph-osd.2">
    SocketPath "/var/run/ceph/ceph-osd.2.asok"
  </Daemon>
  <Daemon "test-osd.0">
    SocketPath "/var/run/ceph/test-osd.0.asok"
  </Daemon>
  <Daemon "ceph-mon.mon01">
    SocketPath "/var/run/ceph/ceph-mon.mon01.asok"
  </Daemon>

</Plugin>
EOS
        it "Will create #{options[:plugin_conf_dir]}/10-ceph.conf" do
          is_expected.to contain_collectd__plugin('ceph').with_content(content)
        end
      end

      context ':ensure => absent' do
        let :params do
          { daemons: ['ceph-osd.0', 'ceph-osd.1', 'ceph-osd.2'], ensure: 'absent' }
        end

        it "Will not create #{options[:plugin_conf_dir]}/10-ceph.conf" do
          is_expected.to contain_file('ceph.load').with(
            ensure: 'absent',
            path: "#{options[:plugin_conf_dir]}/10-ceph.conf"
          )
        end
      end

      context ':manage_package => true' do
        let :params do
          {
            manage_package: true,
            daemons: ['ceph-osd.0']
          }
        end

        it 'Will manage collectd-ceph' do
          is_expected.to contain_package('collectd-ceph').with(
            ensure: 'present',
            name: 'collectd-ceph'
          )
        end
      end

      context ':manage_package => undef/false' do
        let :params do
          {
            daemons: ['ceph-osd.0']
          }
        end

        it 'Will not manage collectd-ceph' do
          is_expected.not_to contain_package('collectd-ceph').with(
            ensure: 'present',
            name: 'collectd-ceph'
          )
        end
      end

      context ':manage_package => undef/false on osfamily => RedHat with collectd 5.4 and below' do
        let :facts do
          facts.merge(collectd_version: '5.4')
        end

        let :params do
          {
            daemons: ['ceph-osd.0']
          }
        end

        it 'Will not manage collectd-ceph' do
          is_expected.not_to contain_package('collectd-ceph').with(
            ensure: 'present',
            name: 'collectd-ceph'
          )
        end
      end

      context ':ceph is not an array' do
        let :params do
          { daemons: 'ceph-osd.0' }
        end

        it 'Will raise an error about :daemons being a String' do
          is_expected.to compile.and_raise_error(%r{String})
        end
      end
    end
  end
end
