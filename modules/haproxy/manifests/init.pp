class haproxy{
  package { 'haproxy':
    ensure => 'installed',
  }
  
  service { 'haproxy':
    ensure => 'running',
  } 

  package { 'consul-template':
    ensure => 'installed',
  }

  service { 'consul-template':
    ensure => 'running',
  }
}
