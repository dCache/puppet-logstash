
class site_logstash::config inherits site_logstash::params {

	if $site_logstash::logstash_conf_hash != {}{

		$site_logstash::logstash_conf_hash.each |$log_config_name, $log_config| {

			$logstash_configuration = $log_config
      
			file { "${log_config_name}-file" :
			    path    => "/etc/logstash/conf.d/${log_config_name}.conf",
				mode    => '0655',
				content => template("site_logstash/${logstash_configuration['Template']}.erb"),
			}

		}
	}
}