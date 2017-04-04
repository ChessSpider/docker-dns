FROM ubuntu

RUN apt-get update && apt-get install -y bind9 bind9utils bind9-doc

COPY ./named.conf.options /etc/bind/named.conf.options

EXPOSE 53

CMD named -4 -u docker  -g 

