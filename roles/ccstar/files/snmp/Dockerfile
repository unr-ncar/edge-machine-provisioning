FROM "logstash:7.13.1"
#RUN echo $UID
#USER root
#RUN cat /etc/resolv.conf
#RUN yum update
#RUN yum install ca-certificates
#USER 1000
#RUN apt update
#RUN apt instal ca-certificates
#RUN  update-ca-certificates
#RUN curl https://rubygems.org/latest_specs.4.8.gz 
RUN  bin/logstash-plugin install --version=3.1.5 logstash-output-mongodb
RUN  bin/logstash-plugin install logstash-output-elasticsearch
RUN  bin/logstash-plugin install logstash-input-snmp
