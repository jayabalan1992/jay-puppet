class consul_template (
  $consul_version          = 'consul_1.4.4_linux_amd64.zip',
  $consul_template_version = 'consul-template_0.20.0_darwin_386.tgz',
  $consul_install_path     = '/usr/local/bin'
){
  package { 'wget': ensure => 'installed' }
  package { 'unzip': ensure => 'installed' }

  exec { 'install consul':
    command => "wget https://releases.hashicorp.com/consul/1.4.4/${consul_version} && tar -xvf ${consul_version}",
    cwd     => $consul_install_path
  }
  exec { 'install_consul_template':
    command => "wget /usr/local/bin/https://releases.hashicorp.com/consul-template/0.20.0/${consul_template_version} && unzip ${consul_template_version}",
    cwd     => $consul_install_path
  }
}
