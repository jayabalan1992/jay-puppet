node /web\d+\.jb.com/ {
  class { 'jbnginx': }
  class { 'jbntp': }
}
