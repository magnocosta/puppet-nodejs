# -*- mode: ruby -*-
# vi: set ft=ruby :

class nodejs::install {

  exec { "apt-update-nodejs":
    command => "/usr/bin/apt-get update"
  }

  # Install util packages
  package { ["nodejs"]:
    ensure  => installed,
    require => Exec["apt-update-nodejs"]
  }

}
