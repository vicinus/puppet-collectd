# See http://collectd.org/documentation/manpages/collectd.conf.5.shtml#plugin_curl_json
define collectd::plugin::curl_json (
  $url,
  $instance,
  Hash $keys,
  $ensure         = 'present',
  $host           = undef,
  $interval       = undef,
  $user           = undef,
  $password       = undef,
  $digest         = undef,
  $verifypeer     = undef,
  $verifyhost     = undef,
  $cacert         = undef,
  $header         = undef,
  $post           = undef,
  $timeout        = undef,
  $order          = '10',
  $manage_package = undef,
) {

  include ::collectd

  $_manage_package = pick($manage_package, $::collectd::manage_package)

  if $_manage_package {
    if $facts['os']['family'] == 'Debian' {
      $libyajl_package = $facts['os']['distro']['codename'] ? {
        'precise' => 'libyajl1',
        default   => 'libyajl2'
      }
      ensure_packages($libyajl_package)
    }

    if $facts['os']['family'] == 'RedHat' {
      ensure_packages('collectd-curl_json')
    }
  }

  $conf_dir = $collectd::plugin_conf_dir

  # This is deprecated file naming ensuring old style file removed, and should be removed in next major relese
  file { "${name}.load-deprecated":
    ensure => absent,
    path   => "${conf_dir}/${name}.conf",
  }
  # End deprecation

  file {
    "${name}.load":
      path    => "${conf_dir}/${order}-${name}.conf",
      owner   => 'root',
      group   => $collectd::root_group,
      mode    => '0640',
      content => template('collectd/curl_json.conf.erb'),
      notify  => Service['collectd'],
  }
}
