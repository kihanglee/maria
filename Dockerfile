FROM image-registry.openshift-image-registry.svc:5000/openshift/jeus:8.1.105067-jdk8-openjdk
USER root

COPY ROOT.war /root/app/
COPY mysql-connector-java-8.0.22.jar /root/jeus8/lib/datasource
COPY domain.xml /root/jeus8/domains/domain1/config/domain.xml

#
RUN rm -rf /root/jeus8/domains/domain1/servers/*
RUN chmod -R 777 /root/*
#
EXPOSE 8080