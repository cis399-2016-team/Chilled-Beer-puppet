#class { 'apache': }
# I used "https://github.com/puppetlabs/puppetlabs-apache/blob/master/manifests/init.pp" as a reference for creating the file

class apache {
    package {
      "apache": ensure => installed;
    }

file {"/etc/apache2/apache2.conf":
  source =>  [
    "puppet:///modules/apache2/apache2.conf",
  ],

  owner => root,
  group => root,

  require => Package["apache"],
	}

service { "apache2":
  enable => true,
  ensure => running,
  hasstatus => true,
  hasrestart => true,

  require => [ Package["apache"], 
              File["/etc/apache2/apache2.conf"] ],

  subscribe => File["/etc/apache2/apache2.conf"]

}

}