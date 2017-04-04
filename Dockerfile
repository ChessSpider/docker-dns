FROM ubuntu

RUN apt-get update && apt-get install -y bind9 bind9utils bind9-doc

COPY ./default /etc/default/bind9
COPY ./named.conf.options /etc/bind/named.conf.options


