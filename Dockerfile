FROM ubuntu:16.04
MAINTAINER Robert Luiz Vilvert
RUN rm /bin/sh && ln -s /bin/bash /bin/sh && apt-get update && apt-get install wget -y && apt-get install curl -y && apt-get install unzip -y && apt-get clean && apt-get install -y tar && apt-get install -y xz-utils && \
    apt-get clean && mkdir /app && wget https://nodejs.org/dist/v6.9.1/node-v6.9.1-linux-x64.tar.xz && \
    tar Jxf node-v6.9.1-linux-x64.tar.xz && rm -f node-v6.9.1-linux-x64.tar.xz
RUN cp -pr node-v6.9.1-linux-x64/{bin,include,lib,share} /usr/
RUN wget https://github.com/robertvilvert/nodejs-automation/archive/master.zip && unzip master.zip -d /app && rm -f master.zip
RUN DIR=$(ls /app/) && mv /app/${DIR} /app/src && cd /app/src/ && npm install
WORKDIR /app/src
CMD ["node","index.js"]
