require 'spec_helper'

describe 'collectd::plugin', type: :define do
  on_supported_os.each do |os, facts|
    context "on #{os} " do
      let :facts do
        facts
      end

      options = os_specific_options(facts)
      context 'loading a plugin on collectd <= 4.9.4' do
        let(:title) { 'test' }
        let :facts do
          facts.merge(collectd_version: '5.3')
        end

        it "Will create #{options[:plugin_conf_dir]}/10-test.conf with the LoadPlugin syntax with brackets" do
          is_expected.to contain_file('test.load').with_content(%r{<LoadPlugin})
        end
      end

      context 'loading a plugin on collectd => 4.9.3' do
        let(:title) { 'test' }
        let :facts do
          facts.merge(collectd_version: '4.9.3')
        end

        it "Will create #{options[:plugin_conf_dir]}conf.d/10-test.conf with the LoadPlugin syntax without brackets" do
          is_expected.to contain_file('test.load').without_content(%r{<LoadPlugin})
        end
      end
    end
  end
end
