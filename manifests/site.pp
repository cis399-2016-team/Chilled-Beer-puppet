node ip-10-0-1-25 {
	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/3",
	}
	include sshd
    }

    node ip-10-0-1-24 {
	include sshd   
	 }

    #node ip-10-0-3-101 {
	#include sshd
	#}

    #node ip-10-0-3-199{
	#include sshd
	#}

    #node ip-10-0-1-125 {
    #}
