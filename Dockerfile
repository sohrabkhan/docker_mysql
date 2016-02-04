FROM mysql
MAINTAINER Sohrab Khan <sohrab@sohrabkhan.com>

RUN apt-get update && apt-get upgrade -y

ENV MYSQL_ROOT_PASSWORD sample_password
ENV MYSQL_DATABASE sample_db

EXPOSE 3306

VOLUME ["data_dir", "/var/lib/mysql"]