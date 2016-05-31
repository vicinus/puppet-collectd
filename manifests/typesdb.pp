define collectd::typesdb (
  $path = $title,
  $mode = '0640',
  $order = 2,
) {

  include ::collectd

  if $collectd::concat_config {
    ensure_resource('concat::fragment', 'typesdb_start', {
      target  => $collectd::config_file,
      content => "TypesDB",
      order   => 1,
    })

    concat::fragment { $path:
      target  => $collectd::config_file,
      content => " \"${path}\"",
      order   => $order,
    }
  }

  concat { $path:
    ensure         => present,
    owner          => 'root',
    group          => $::collectd::root_group,
    mode           => $mode,
    ensure_newline => true,
    notify         => Service['collectd'],
  }
}
