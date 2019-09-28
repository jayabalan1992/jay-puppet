node /web\d+\.jb.com/ {
  class { 'jbnginx': }
  class { 'jbntp': }
}
node /haproxy/ {
  include ::role::haproxy::server
}
node /slave1/ {
  include ::profile::base
}
