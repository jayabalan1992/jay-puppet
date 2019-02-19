# init file for nginx
class jbnginx {
  package { 'nginx' :
    provider => 'yum',
    ensure   => installed,
  }
  service { 'nginx' :
    ensure  => 'running',
    enable => true,
  }
}
