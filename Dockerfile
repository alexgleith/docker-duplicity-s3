FROM ubuntu:trusty

MAINTAINER Alex Leith

RUN apt-get install -y software-properties-common

RUN apt-add-repository ppa:duplicity-team/ppa
RUN add-apt-repository ppa:chris-lea/python-boto
RUN apt-get update
RUN apt-get install -y duplicity python-boto