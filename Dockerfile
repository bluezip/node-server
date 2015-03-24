
FROM ubuntu:14.04
MAINTAINER bluezip <serin212@hotmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs


RUN npm -g install forever

# Remove things for building modules
RUN apt-get remove -y manpages manpages-dev g++ gcc cpp make python-software-properties unattended-upgrades ucf g++-4.6 gcc-4.6 cpp-4.6 python

RUN     useradd -m default

WORKDIR /home/default
