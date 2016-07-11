class sshd {
	package {
		"openssh-server": ensure => installed;
	}

	file { "/etc/ssh/manifest/sshd/sshd_config.conf":
		source  => [
			# from modules/smartd/files/$hostname/smartd.conf
			"puppet:///modules/sshd/sshd.conf",
		],
        
		mode    => 444,
		owner   => root,
		group   => root,

		# package must be installed before configuration file
		require => Package["openssh-server"],
	}

	service { "ssh":
		# automatically start at boot time
		enable     => true,
		# restart service if it is not running
		ensure     => running,
		# "service smartd status" returns useful service status info
		hasstatus  => true,
		# "service smartd restart" can restart service
		hasrestart => true,
		# package and configuration must be present for service
		require    => [ Package["sshd"],
			        File["/etc//ssh/manifest/ssh/ssh_config.conf"] ],
		# changes to configuration cause service restart
		subscribe  => File["/etc/ssh/manifest/ssh/ssh_config.conf"],
	}
}
