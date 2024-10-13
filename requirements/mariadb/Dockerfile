FROM debian:latest

RUN apt update && apt upgrade && apt install -y mariadb-server



COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY init.sql /etc/mysql/init.sql


RUN mkdir /run/mysqld

EXPOSE 3306

CMD ["mysqld"]
