FROM debian:buster

RUN apt -y update  && apt install -y mariadb-server mariadb-client gettext-base 

COPY ./config/server.cnf /etc/mysql/mariadb.conf.d/server.cnf
COPY ./config/script.sh /var/.
COPY ./config/init.sql /var/.

CMD ["sh", "/var/script.sh" ]

