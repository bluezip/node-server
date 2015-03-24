
FROM ubuntu
MAINTAINER bluezip <serin212@hotmail.com>

RUN apt-get update
RUN apt-get install git nano imagemagick nodejs -y

RUN npm install -g forever

EXPOSE 80:80
EXPOSE 443:443
EXPOSE 3000:3000
