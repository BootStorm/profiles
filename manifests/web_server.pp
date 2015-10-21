class profiles::web_server {

	class { '::mysql::server':
		root_password        => hiera('mysql::server::root_password'),
		remove_default_accounts => true,
	}

	package { 'wget':
		ensure => installed,
	}

}
