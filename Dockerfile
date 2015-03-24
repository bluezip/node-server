
FROM ubuntu
MAINTAINER bluezip <serin212@hotmail.com>

RUN apt-get update
RUN apt-get install -y imagemagick nodejs nano npm make

RUN npm -g install forever