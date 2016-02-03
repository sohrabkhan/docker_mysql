FROM ubuntu
MAINTAINER Sohrab Khan <sohrab@sohrabkhan.com>

RUN apt-get update && apt-get upgrade -yqq

#Install mysql
COPY mysql_install.sh /mysql_install.sh
RUN chmod 755 /mysql_install.sh
RUN ./mysql_install.sh

VOLUME ["/var/lib/mysql"]

EXPOSE 3306
#Run mysql service
COPY mysql_run.sh /mysql_run.sh
RUN chmod 755 /mysql_run.sh
#RUN ./mysql_run.sh
