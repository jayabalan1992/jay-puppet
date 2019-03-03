# init file for nginx
class jbnginx {
  package { 'nginx':
    provider => 'yum',
    ensure   => installed,
  }
  file { '/etc/nginx/nginx.conf':
    content => template('nginx.conf.erb')
  }
  service { 'nginx':
    ensure  => 'running',
    enable => true,
  }
}
