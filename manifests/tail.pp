class resolvconf::tail (
  $ensure     = present,
  $header     = 'This file is managed by Puppet, do not edit',
  $nameserver = [],
  $domain     = '',
  $search     = [],
  $options    = [],
) {

  $file = '/etc/resolvconf/resolv.conf.d/tail'

  resolvconf::file { $file:
    ensure     => $ensure,
    header     => $header,
    nameserver => $nameserver,
    domain     => $domain,
    search     => $search,
    options    => $options,
  }

}
