# puppet-logstash
This repository contains logstash puppet modules that allow either integration into existing logstash configurations or starting from scratch. Currently it simply contains files parsing Journalbeat input into a local Logstash and pass it on to an external Kafka service

# Module Scope
This module is a small module  that can be used to configure logstash on dCache nodes. It is not compatible with any other third-paty Logstash modules provided by e.g. puppet-forge. It can, however, be used to configure any logstash as well by adding new templates. The naming is chosen as such to allow to use it with other logstash module, hence it it called site_logstash. Currently the following templates exist:

- Parsing pre-6.2 style dCache log-files pased on a Grok filter and passing the entries on to Kafka
- Collecting the output from a Beat stream, e.g. Journalbeat, removing unnecessary entries and passing the entry on to Kafka

The following templates are being tested at DESY currently

- Collecting and archival of messages from Kafka to local files
- Collecting and passing on of messages from Kafka to ElasticSearch
- Taking custom TCP JSON input and passing it on to ElasticSearch

and will be added when they are ready. In general, the idea is to have most of the intensive configuration take place in the templates using flexible hashes it is recommended to also make use of Hiera if possible.

# Installation
Depending on your local setup different installation step are required, best check with you local Puppet admins.

# Usage
