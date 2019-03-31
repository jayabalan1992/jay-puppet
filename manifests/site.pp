node /web\d+\.jb.com/ {
  class { 'jbnginx': }
  class { 'jbntp': }
}
node /haproxy/ {
  include ::role::haproxy::server
}
