
FROM ubuntu
MAINTAINER bluezip <serin212@hotmail.com>

RUN apt-get update
RUN apt-get install -y imagemagick make
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

RUN npm -g install forever