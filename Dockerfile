FROM ubuntu:latest

RUN apt update -y
RUN apt install -y proftpd

ADD proftpd.conf /etc/proftpd/proftpd.conf
RUN mkdir /ftp

EXPOSE 21
EXPOSE 20

VOLUME /ftp

ENTRYPOINT proftpd --nodaemon
