class useraccounts {
	
	user { "stevev":
		home => "/home/stevev",
		managehome => true,
	}

	user { "jstuemke":
		home => "/home/jstuemke",
		managehome => true,
	}

	user { "lovett2":
		home => "/home/lovett2",
		managehome => true,
	}

	user { "bheng":
		home => "/home/bheng",
		managehome => true,
	}

	user { "jbrodnax":
		home => "/home/jbrodnax",
		managehome => true,
	}

	user { "zhibin":
		home => "/home/zhibin",
		managehome => true,
	}

	user { "micahlevi":
		home => "/home/micahlevi",
		managehome => true,
	}

	user { "elicaluya":
		home => "/home/elicaluya",
		managehome => true,
	}

	user { "costello":
		home => "/home/costello",
		managehome => true,
	}

	user { "eewing":
		home => "/home/eewing",
		managehome => true,
	}

	user { "panda":
		home => "/home/panda",
		managehome => true,
	}

	user { "acgarvin":
		home => "/home/acgarvin",
		managehome => true,
	}

	user { "pishpash":
		home => "/home/pishpash",
		managehome => true,
	}

	user { "clwaring":
		home => "/home/clwaring",
		managehome => true,
	}

	ssh_authorized_key { "stevev-key-pair-oregon":
    	user => "stevev",
	type => "ssh-rsa",
	key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCrFq80b0ptexNiI6KP4hxww5d5RFm8djIpsdJqRZDyoyD5vaf7d30bTLef8su6stHuBBjKccMcUjNyu4BliJBXIy7bKVDllVB5oeLFizDahQcgqjYfzyqj16uEa7NLBW5/3ljLpPX8XEI7YFM/hg65JFgpQIAiBi2N6bGj9mQrh/51SpCO6FruQH8KVjDl/CLgbnFq9cDwRDAo4tvPO1b0MRVrvM8BbZbBUHqV/093jVXkwY+BxsU6cgOnHrSmoTnH4MqMXUI/ok31JORVbWW5NAz28Ag7V/NbDvRBIYicJOd9aqEST/L812+tmnE8iQzn3bZvv7v0E7FHneCS5Qpz",
	}

	ssh_authorized_key { "CIS399":
	user => "lovett2",
	type => "ssh-rsa",
	key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCx/EgedQlVAGuFLUNtrJfGYIB4ieO1YcrD3ssoOtVA97YgaLE5VA6J0aazUevfNzsbGhrocGM3QZnStrZdAAhd3fyx+SrPXxVldxwpX70jNJg0KoOUEL7hYpSI8bAqzXSkJhCrxrfZMfhrSPQcS4SyBn3DOTc9xce7D93QW7uO0feluY9BzXiScBgOdCHqlTvZroV4Me1pXZ6mPRWnOqwUMwBTFhcNDKbhsftSYmMtjWuucqjpWTHrRMxO4OGfJk/+IQjPgOxwMG8fZnhZ//OE7YL0thDN0hJ6Ko9I5azztepyOleU5lNgTAqGqRrayhspAby0/VM6/UKy7n+1sjdh",
	}

	ssh_authorized_key { "jstuemke-key-pair-oregon":
	user => "jstuemke",
	type => "ssh-rsa",
	key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCPnelozzko4JcJxfgbm0Ib7h8C0dDpV5NvuKKuzVabFRSlc8MTXUz2aLAaiZzqMQQFdnxOLz0xJrQIpQIGRFiTvBfP1g5fCcHTRcjumv8e5qL+ARGbYgoCz+CMTsF71ZT4Y5U0nJaBuzgKiCNtXjG2Hma/pMT7dEWeUZiOymHihVzUkMa8kAiLkzRJB94ZCv8QeYyO7+cJsjbce4FwBQg+r9+Rwoj11eVj4fOvA1eOhp2d+S31E4GaaEfYrM3lRKQZQLLdygKxiHA3geHMJAJLQaiF3scfm/5NofTS6OxRsoC3q54Q6JXH104okrPYBt/EMRMEY3bO8FI364+LDU4J",
	}

	ssh_authorized_key { "bheng-key-pair-oregon":
        user   => "bheng",
        type   => "ssh-rsa",
        key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCZZ3Gd+3oE71KdZBBP+5xkHizev7Jr5hCGC8mrn3Wef0Aql/hpGGDrAH0hEjeGs+nYMkyFM2EJH+Nt+hMXg59Pssruvgrv+5pVjIiDPucwxgcWHfyhwy7hUlReDiwz7C9VLZXgHdyv8vbMeSDPCO0sNXD1LLL6f6WjHMqsBXi8PXtwe9Bp+ZG+rsz1Odn2IxsYXC0d6kALfknVRDXQxXDFS1HN3vtti5uRMhUEt8/0ceqUDaLfXJ/IbnMtc1wzfV2VAcacvCzlbdjp1bO1Y6ToE4l9UvL9+5bp4mtEZHo61q913M4s2N2/HMk7IvYNJnlFKKAN6wEMlHnkBM7a36hX",
    }

	ssh_authorized_key { "JIB-jbrodnax2-home":
	user   => "jbrodnax",
	type   => "ssh-rsa",
	key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCPZKsyqF2qyLHNZOKyz6oiNK8BIuN7D9WT/TfwDv1eUccwfJJ9ZfSAWNggDhmW64JbwIQosv0NgJsqCXLUt+Ufc8Zd/hyuWTzM833nAiG1LWaesiNXRK6yKJ0qyitQlItCVHZ/Xcp7cJStIC2Fuh8La187BVxyTjRhhjMSP6wLmr++CAZ/coty4v2e9HKR9hJ3ytOfVkElg2I/CvucgpuerjWF+Ks1yKd9LK/t3xyYpzidWZpIug1+VDK/UhxlIaF7VXuea18xNytWEN11hJW16lFra/9/VbAPaxNQ64ygJvUeH2Ls69Z7BgRYv14xdqVy6uwJx5bGAgKlkyLeDHOr",
	}

	ssh_authorized_key { 'JIB-jbrodnax2-laptop':
        ensure => "present",
        user => "jbrodnax",
        type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCPd+QMa3RsWNIwlmh1ZjpO18dJqVeIFUXhqXqZYBANgECByAlOBoUMCTTN8a27EBOHzThaiUsIGuBXf+iNYwRsFnf4T0QG6Uc/S43xwnLhq5A+1O77l7kiQ3/EMAJqarCP5JfN2pXeMAW4pTQYHfpxZrjtolmnb280AqFFdQeebO4Cxr1t6XiGUZQ0txieevoCRsBHNwqorbA0zfoponFKSU9k+woLnMhNx52+KOKWppmpRr0+NXa6NijxROTC08ptzCGXRGNVOnBu8kI7fVHPNz70t4AutHFFqtJ4GGtt/UqeMS8yyJ2A2dinF2Ow/gyhLf+4m6Mr4Ok5vqpFuSVv",
    }

	ssh_authorized_key {"zhibin-key-pair":
	user => "zhibin",
	type => "ssh-rsa",
	key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCxOAgiL2z7qRQ1cIHfmy8t/9nqEevGtAwiyHlFh0psj0Wfa0qAdkJVPafy8Nkhs+QXbkfPEl0tPR0I7fiFW4KP/ZWvOBDU2Bm1IHyn8NnO/mK2IY1B2qARjyfC0QiwE4pOlEJ/nUxTa3kpqrkI/lcMwGbxvptLYqgF10LecemY9vzd6MWhYTtfCgFPYThLHwihER/oFk3rnpIAO/roUYdc44ipnZt6bGtgJ4i1lcmLaQYMUT8E3PFjF3rGEprocyMMrl7pE7iqnIe/LSery9QKcJRARWmQ2JoITiwtHJ1loeT/IQPUayzbaM1oAmkUClx4TN96RBO1ZfPLz5TmyMDl",
	}

	ssh_authorized_key {"micah-key-pair":
	user => "micahlevi",
	type => "ssh-rsa",		
	key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCD3UJqrNj0QDly6MHV2tYfK+m12mq/jmCPfUAcaq1rh3vWl2hRUtC+Zk+AQQt7TMmByXO+fM8V6KfEYpSBygSf1yd2T/tvYtLmJ/70DbaiWoIbA5G2eOQlQE1W3YSvgwZ+FZC67jgC8iaU3Oon7n4PDHxWhElukFWFXfYy5nq4aNAgF6tlX/ETkXMjqRIEFbr2vD+HjTH3x0Svh2Sp5J2v1Vyn6dokIsk29zveN9tF3ZaSgwVUVGcwW167uAOKwDebQnfoXjHgYSRnUPEvptJoaHeeMSSvpwxrhOA8MeFSLG88nHffox7URq5oRoGxNsxux2lZUvpG9eD0/3i1aJ7f",
	}

    	ssh_authorized_key { "costello-key-pair":
        user => "costello",
	type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCPrg48+84u65bZqmcD9yRJd2ILijuiZY7+iFVgQtXi3HH2s0Pc807oo20lD9fVvjzMFlAUluAQ8GGaLAzTY3bN2iGDzvhtCrI0O9r6u/60WKmYmryuVXunTz28IiISH04AQhNvS3B4mAXE5ZlOtBONao15bQO9ulnH1/LWjtOhh/+XeF4TjyvctM5z+hU5BzGmH7zcPm3Uz9+bnq9yVqSBJXt9HSVba0TEzuQv8MIkZnXJmaSdVtyOY7MVqNo91UCD0IfBqvapt7iUXApU0Zkwoi/ybojz2bcjrf8EPE8GJ4cI6wQ957GuqoD7P2G7vJuQpF3A0fDtzGIbHvn33SKZ",
    }

    	ssh_authorized_key { "elijahcaluya_key_pair":
        user => "elicaluya",
	type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCFr3mfY4/QWOsi2DowDDt9KoafoUFN2rdwEEK0Phq/jbhy8l397gIPxf4KWneIRydwX8hbTuLrk/9vbqOr4nL9joFGPql4h50+cM2awr0GFW17FqikYkPJSJ4VczNUzJIw8J9kTQEGZW31Ig0eKGCm1L1G0ARha+r3Zitk3Ed1W1RBT1wVfwokJVq3jzHTB8635tC1BQN0fGngKM21y5r4zSYio0+i/MbF+ObUbxrZvKwrejICEaj2FEZh6p/6ox1Oq+XiljT0qj6zt7l1HKT1O3P+xXxUYDms/fy2FCF/GNLmkep518PtEWGcAWkfJZQCc1ueECfY6KfMOre0r8jz",
	}

    	ssh_authorized_key { "eewing-key-pair":
        user => "eewing",
        type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC+DamMOYW4Nzxc7BT6HVEc2MmfSd4w6d4SUkcs6JJ+toBDyiqV/kJsoqy6+idZeb7dKcyhJbcUjsGTRvzCyZ/h/WIH2IxEujB2LIuRoZFy09HBWSSN5bpjZO2W2/9SJ+kJsTO0PQNEGxDJUGPH1v2GzRqqLdGAidzrJ780Kdg9DwR7J+CKNts/GFck3ZKK+RWgtZUzsJEUqsZhYMMuiTsI70MH6iBg14WQ5vTTfhg2DPjckqx2y20lDz7qZeEa2uZLte/FFX1AMq8NQrFBUBzncU62OhNyYLeRzReiDA+WhsduwkyrhQqB2lr5LvTQgx3OgUUHdZRJn0/uXF8HpiVN",
    }

    	ssh_authorized_key { "Quentillionaire@FINN":
        user => "panda",
        type => "ssh-rsa",
        key =>  "AAAAB3NzaC1yc2EAAAADAQABAAABAQDRXDK0AELCMQXqQbkCU97JXBVUBPKrtEXTym/tZWGoc8cfXDBNOk1ooRUm07D8tc7zHs3zHibPD8UdeTCwd+jtqhvwamD9dLil8dlvCp03go65/3TrxocWxa2rDlx4uPqwWfM+Y/tKvybCGmg73r1EZwZ+WFooL/b+/0oOX+RY+UyMUX6f7/+dicFyMzr07E9aVHLwTdoR3ieHcEMU4OdeqICAWct2K6kdOpHonib0c55D6vwjNTkPzqNqhXj2bldaV3w6mr1XQP4SD4A7vrWLo7U8nUzkILKeF05/VvaU0eXEcQysv56Et07ZtLOb8nAYKpyqVzpbRxbO1L3U9Jx1",
    }

    	ssh_authorized_key { "mike@mike-arch":
        user => "panda",
        type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDI8Mib9mG3LPmJ+faU6RBnv62pyaWkyHo7qwUnOtuAsKUafy4KhgfNGt1GtA+iuinolK2tGCCPhq4AHoi/uYz35trdDP5BmfSqcDOXf/og6D9AM8Pp/SvrJtab+mKixW25Xzes2r5DTDdne9t4akEdrFu0TX84v+JkoW9k1vffXxwx3d4z22vLoZFkelhGBwdU3QxP5OLBOJLUArSq9xPZ9KC1haFSMgGeUozfg0669EZ8huWKGoR9nyUOo4mFm0M84skDaNOqrEbndWMUXMdotOpigiaU235AcVyygHMMD0WUEQkYK2U9CD+fsnbQYz+GMyEhrvj4WoZhkSjLnJgh",
    }

    	ssh_authorized_key { "Quent@DESKTOP-ER46L4L":
        user => "panda",
        type => "ssh-rsa",
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCjLSZjv6S8XRccQVhYeIBQaioPCk0yDnawtpjm5H85bFTBBEBLbAf984ROzg/f7L0eUN5cowON1N+qJHCoAYm7PGxctMjpqnjzWmX49TgnT1c3dt8iGbee/dQZx5FxD3fIYqGjrlDvLFG9PrnpYv3t3UitWGHQkns40UZr98kova0u8ugi31NHvs54K/AYNbmu586OYTlbBuFUtJJoiCcfa1FeAjhXSTpRyCWkZfMLRO7sxKecHaChpdysZkyscpW8v6wjj7iZYmmyJdIPUD27kZMfT5+Nl/3rYZbG3M4Pili2I+px8EYZpK5RQjcCLNULtLsutz0wk7ac009SGJ4r",
    }

	ssh_authorized_key { "ACG-key-pair":
	user=> "acgarvin",
	type => "ssh-rsa",
	key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCdEemHGVVeacdNNYhmAG0FMn05Su+mXTMehI3xuFnl1BCU4dEv+x2VIQbwJDCY/YlfhSs1ozEab3bO2/CrcauqZYLUmvRW0oyKbgO2sFKFG2FOaEAejjy3nmhL5dmDiooQm0Ctk4rPE8Sf6Kt427yhErx462fHoGxJ/UVP4VGHHREA4MgdncyChCK/Zv5qj7M4woOV5Pw+mU2qjZVgIQrTjPUgO7P8PGhyYv4eBQTVvp6G7kbYafX+rYZUFUpyE84344WB5beLvFw+Am5imbm79oOaWJ4vUh75wfUnD0tBOXCMcCnlTinRX/cxTfs7eM61t3euMGn8ShzlaqBcMkTZ",
	}

	ssh_authorized_key { "pasha-key-pair-oregon":
	user => "pishpash",
	type => "ssh-rsa",
	key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCU0FxFGLvLP7eKHzPU2YsaHuBKVLO2dVnrSHWLplVZbPPF0V7r+D6kzkLrx0/xjJ965TmrTrzs0ODF6nWq3lNUkleUqtS+FFPuzXgJoL65LCQttnGdOhlaU2ntT0XX4teRgenQOuzUBH88F5jfK+jNiZnF7XcXJzIufgT/JLDRtknLpuda59HHtNyEQqWAyuWySj3NwYit+hG3qKzq8DOGZJIz2R1osCyHLqqYjpHQjyYK8cR1TI5CfDvvloGtk+2rmjphYFBlKLa6bjPUDC1qkzElpIrlKZUWsI+wuHHUb5ppm356CCf6uhnGInTvpkwr8tw1/i0LzAIc/JKeiPYf",
	}


	ssh_authorized_key { "clwaring":
	user => "clwaring",
	type => "ssh-rsa",
	key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCoamIc24g51gBC55Bbcq8AUi9ghA5Y7l3b8mnOQvX+kQJpfNt//cMbUXAhBMnjiv+cfFKi+klW8UUSI1SPccpV/nGbZH/k9XEKnpqK3XBRPUEHbA5QGujqOW7J44zjYKeXovH6PwQvZepjENI6ti3nBX7bvd8CRlMK3B3U4IJtghF8mz4FVLDjx1OOQAEDv5trzd7F0fRnWiuDVH9sUsVAeziUWhYKVmz9AhgSnnx8JSHXw6Rn5PGZyWDCttd0vG1KMPGULjc4nK5Oru3cu2Hsgb0dN0AjxbOwAamEto98zOe4HkO6oP71tOhk0KQmVKNgP/SpQ7Lh9gkTp2difDs/",
	}

}
