class profile::haproxy::server{
  include jbnginx
  include haproxy
  include consul_template
}
