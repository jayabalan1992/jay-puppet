# Installs ntp
class jbntp {
  package { 'ntp' :
    ensure  => installed,
  }

  service { 'ntp' :
    state => running, 
  }
}
