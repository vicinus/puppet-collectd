# https://collectd.org/wiki/index.php/Plugin:Disk
class collectd::plugin::disk (
  Array $disks            = [],
  $ensure                 = 'present',
  Boolean $ignoreselected = false,
  $interval               = undef,
  $manage_package         = undef,
  $package_name           = 'collectd-disk',
  $udevnameattr           = undef,
) {

  include ::collectd

  if $facts['os']['family'] == 'RedHat' {
    if $manage_package != undef {
      $_manage_package = $manage_package
    } else {
      if versioncmp($::collectd::collectd_version_real, '5.5') >= 0 {
        $_manage_package = true
    } else {
        $_manage_package = false
      }
    }

    if $ensure == 'present' {
      $ensure_real = $::collectd::package_ensure
    } elsif $ensure == 'absent' {
      $ensure_real = 'absent'
    }

    if $_manage_package {
      package { 'collectd-disk':
        ensure => $ensure_real,
        name   => $package_name,
      }
    }
  }

  collectd::plugin { 'disk':
    ensure   => $ensure,
    content  => template('collectd/plugin/disk.conf.erb'),
    interval => $interval,
  }
}
