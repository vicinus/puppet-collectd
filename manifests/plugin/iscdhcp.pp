# Class: collectd::plugin::iscdhcp
#
# @see https://pypi.python.org/pypi/collectd-iscdhcp
#
#  Configures iscdhcp metrics collection. Optionally installs the required plugin packages
#
# @param ensure Optional[String] Passed to package and collectd::plugin resources (both). Default: present
# @param manage_package Optional[Boolean] Toggles installation of plugin. Default: undef
# @param package_name Optional[String] Name of plugin package to install. Default: collectd-iscdhcp
# @param package_provider Optional[String] Passed to package resource. Default: pip
# @param provider_proxy Optional[String] Proxy for provider. Default: undef
class collectd::plugin::iscdhcp (
  Optional[String] $ensure           = 'present',
  Optional[Boolean] $manage_package   = undef,
  Optional[String] $package_name     = 'collectd-iscdhcp',
  Optional[String] $package_provider = 'pip',
  Optional[String] $provider_proxy   = undef,
) {
  include ::collectd

  $_manage_package = pick($manage_package, $::collectd::manage_package)

  if ($_manage_package) {
    if (!defined(Package['python-pip'])) {
      package { 'python-pip': ensure => 'present', }

      Package[$package_name] {
        require => Package['python-pip'],
      }

      if $facts['os']['family'] == 'RedHat' {
        # Epel is installed in install.pp if manage_repo is true
        # python-pip doesn't exist in base for RedHat. Need epel installed first
        if (defined(Class['::epel'])) {
          Package['python-pip'] {
            require => Class['::epel'],
          }
        }
      }
    }
  }

  if ($_manage_package) and ($provider_proxy) {
    $install_options = [{'--proxy' => $provider_proxy}]
  } else {
    $install_options = undef
  }

  package { $package_name:
    ensure          => $ensure,
    provider        => $package_provider,
    install_options => $install_options,
  }

  collectd::plugin::python::module { 'collectd_iscdhcp.collectd_plugin':
    ensure => $ensure,
  }
}
