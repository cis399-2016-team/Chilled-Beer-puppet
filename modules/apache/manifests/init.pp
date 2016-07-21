#class { 'apache': }



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

file {"/var/www/html/index.html":
  source => [
    "puppet:///module/apache/index.html"
  ]

  ensure => directory,
  recurse => directory,
  mode => 755,
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