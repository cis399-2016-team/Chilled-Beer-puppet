node ip-10-0-1-25 {
	cron cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/5",
	}

    }

    node ip-10-0-1-24 {
    }

    node ip-10-0-1-125 {
    }
