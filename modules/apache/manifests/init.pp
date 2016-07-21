#class { 'apache': }
# Files attempting to submit for apache week 4 project


class apache {
    package {
      "apache": ensure => installed;
    }

file {"/etc/apache2/apache2.conf":
  source =>  [
    "puppet:///modules/apache2/apache2.conf",
  ],

  mode => 444,
  owner => root,
  group => root,

  require => Package["apache"],
	}

file {"/var/www/html/":
  source => [
    "puppet:///module/apache/html"
  ]

  ensure => directory,
  recurse => directory,
  mode => 755,
  owner => root,
  group => root,

  require => Package["apache"],
}

service { "apache":
  enable => true,
  ensure => running,
  hasstatus => true,
  hasrestart => true,

  require => [ Package["apache"], 
              File["/etc/apache2/apache2.conf"] ],

  subscribe => File["/etc/apache2/apache2.conf"
  }

}