require 'spec_helper'

describe 'collectd::type', type: :define do
  let :facts do
    {
      osfamily: 'Debian',
      id: 'root',
      concat_basedir: '/dne',
      path: '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
      collectd_version: '4.8.0',
      python_dir: '/usr/local/lib/python2.7/dist-packages'
    }
  end

  context 'define a type' do
    let(:title) { 'index' }
    let :params do
      {
        target: '/etc/collectd/types.db',
        ds_type: 'ABSOLUTE',
        min: 4,
        max: 5,
        ds_name: 'some_name'
      }
    end

    it 'creates an entry' do
      is_expected.to contain_concat__fragment('/etc/collectd/types.db/index').with(target: '/etc/collectd/types.db',
                                                                                   content: "index\tsome_name:ABSOLUTE:4:5")
    end
  end

  context 'define a multiple type' do
    let(:title) { 'index' }
    let :params do
      {
        target: '/etc/collectd/types.db',
        types: [
          {
            'ds_type' => 'ABSOLUTE',
            'min' => 4,
            'max' => 5,
            'ds_name' => 'some_name'
          },
          {
            'ds_type' => 'COUNTER',
            'min' => 7,
            'max' => 'U',
            'ds_name' => 'other_name'
          }
        ]
      }
    end

    it 'creates an entry' do
      is_expected.to contain_concat__fragment('/etc/collectd/types.db/index').with(target: '/etc/collectd/types.db',
                                                                                   content: "index\tsome_name:ABSOLUTE:4:5, other_name:COUNTER:7:U")
    end
  end
end
