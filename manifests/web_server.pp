class profiles::web_server {

	$root_pwd = hiera('mysql::server::root_password')
	notify { "the root password is ${root_pwd}": }


	class { '::mysql::server':
		root_password        => $root_pwd,
		remove_default_accounts => true,
	}

	package { 'wget':
		ensure => installed,
	}

}
