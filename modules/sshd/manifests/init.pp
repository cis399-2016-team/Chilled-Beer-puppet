class sshd {
	package {
		"openssh-server": ensure => installed;
	}

	file { "/etc/ssh/sshd_config":
		source  => [
			# from modules/smartd/files/$hostname/smartd.conf
			"puppet:///modules/sshd/files/sshd_conf",
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
		require    => [ Package["openssh-server"],
			        File["/etc/ssh/ssh_config"] ],
		# changes to configuration cause service restart
		subscribe  => File["/etc/ssh/ssh_config"],
	}

	ssh_authorized_key { "chenders-key-pair-oregon":
    	user => "ubuntu",
		key  => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCWR1HbA7kQtEHE2qHTQnuTNsEGQtz8cMg5HID4WaMwOdNKGYR4ARmXHhI6Lpn2/kQ97ay2j1M1tYZhJSsglqrsGRY+gxEyr3Yp5Aq4KVLqYEnvHV5cfRbpekD3zGULH2dri8C/c/Z8ASBNHmm3deLz1IiB2IetTZ3fCS3VAqvlEF6WIbXw13j5kGGHbPG/TFevdKXwQTAK75P1LaNx00vjTHPP03/nmwRItl3lLuYS8RXyrOtmJR/oxCWqu+WZCBV5Dz37idScZ/kwrbjaDNTBrydC5lArn2x6m2r9JIn5cjI7hf3FZAfOkXSivxBTlpZ3hYW41XvHewLo3kKVIamX chenders-key-pair-oregon"
	}

	ssh_authorized_key { "sethplunkett-key-pair":
    	user => "ubuntu",
		key  => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRX1li+8TVLDpe5hKN+30F/azIvkDy0fUO1Ae5X43sWWEdrn874Jj6+TJLhhg0stG80idOUBLPKiGRzQYPI1a+7EGGekSqK1MiLaGI/qTah6eryE9dStOJvpLUxKz8eqsO5+kDan5buR4XMplu6ts5VVznWMvUuQQoKesJ6O8PrHLzwSF5Gw/Okbslx/MJ/SF/Rd4rWA1Vtiw46R8nY6Udeg2VqvCaDnO6AJHrqmiENKK6Nl8zf00LjI3HdAIeZ2Dqf5TOk/gnhy9TkfBnPv8wcyKbnm5nTPoidxDrzR8D65WpXDwwh1/RuavOI3ioDCq7/8irEQUtz4iHEuJkmxEp sethplunkett-key-pair",
	}
}
