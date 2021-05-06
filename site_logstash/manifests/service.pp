
class site_logstash::service inherits site_logstash::params {

  service {$site_logstash::service_name:
      ensure     => running,
      enable     => true,
      hasstatus  => true,
      hasrestart => true,
    }

}