#class { 'apache': }
# Files attempting to submit for apache week 4 project


class apachesql {
    package {
      "apache2": ensure => installed;
    }

file {"/etc/apache2/apache2.conf":
  source =>  [
    "puppet:///modules/apache/apache2.conf",
  ],

  mode => 444,
  owner => root,
  group => root,

  require => Package["apache2"],
	}

file {"/var/www/html":
  source => [
    "puppet:///modules/apachesql/html"
  ],
  recurse => true,
  ensure => directory,
  mode => 755,
  owner => root,
  group => root,

  #require => Package["apache"],
}

service { "apache2":
  enable => true,
  ensure => running,
  hasstatus => true,
  hasrestart => true,

  require => [ Package["apache2"], 
              File["/etc/apache2/apache2.conf"] ],

  subscribe => File["/etc/apache2/apache2.conf"]
  }
}