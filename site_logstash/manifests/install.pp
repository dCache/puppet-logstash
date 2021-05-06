
class site_logstash::install inherits site_logstash::params {

   ensure_resources('yumrepo',
		{ 'logstash-7.x' =>
			{ descr     => "Elastic repository for 7.x packages",
			  baseurl   => "https://artifacts.elastic.co/packages/7.x/yum",
			  gpgkey    => "https://artifacts.elastic.co/GPG-KEY-elasticsearch",
			  enabled   => 1,
			  gpgcheck  => 1,
			}
		},
		{'ensure' => 'present'})
		
#   yumrepo {'logstash-7.x':
#     descr     => "Elastic repository for 7.x packages",
#     baseurl   => "https://artifacts.elastic.co/packages/7.x/yum",
#     gpgkey    => "https://artifacts.elastic.co/GPG-KEY-elasticsearch",
#     enabled   => 1,
#     gpgcheck  => 1,
#   }


  package {'logstash':
    ensure => present,
    require => Yumrepo['logstash-7.x']
  }

}