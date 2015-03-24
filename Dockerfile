
FROM ubuntu
MAINTAINER bluezip <serin212@hotmail.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install git nano imagemagick -y

RUN mkdir /Development
RUN cd /Development && git clone git://github.com/joyent/node

RUN cd /Development/node && ./configure && make && make install
RUN rm -rf /Development/node
RUN chmod 777 -R /Development

RUN npm install -g bower grunt-cli yo

EXPOSE 80:80
EXPOSE 443:443
EXPOSE 3000:3000
