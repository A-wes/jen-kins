FROM tomcat:8.0

RUN apt-get update; exit 0
RUN apt-get install -y \
    nano \
&& mkdir -p /usr/local/tomcat/conf

COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/

