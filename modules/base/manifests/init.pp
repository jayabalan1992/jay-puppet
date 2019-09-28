class base {
  package { 'rsync':
    ensure => 'installed',
  }
  package { 'vim':
    ensure => 'installed',
  }
}
