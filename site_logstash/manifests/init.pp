#
# @summary <Replace with short summary for your hostgroup>
#
# @param <parameter name>
#   <Description of the parameter>
#
class site_logstash ( $service_name = 'logstash.service',
					  $logstash_conf_hash = undef) {

#  include site_logstash::install
#  include site_logstash::config
#  include site_logstash::service
  
  Class['site_logstash::install']
  -> Class['site_logstash::config']
   ~> Class['site_logstash::service']

  contain site_logstash::install
  contain site_logstash::config
  contain site_logstash::service

}