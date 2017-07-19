FROM jboss/wildfly
MAINTAINER atzedevries@naturalis.nl
USER root
ENV LANG en_US.UTF-8
RUN mkdir /etc/purl
ADD purl.properties /etc/purl/purl.properties
ADD log4j2.xml /etc/purl/log4j2.xml
ADD standalone.xml /opt/jboss/wildfly/standalone/configuration/standalone.xml
ADD purl.war /opt/jboss/wildfly/standalone/deployments/
