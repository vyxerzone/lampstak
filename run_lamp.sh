#!/bin/sh


apt-get -y install wget screen git && git clone https://github.com/teddysun/lamp.git && cd lamp && chmod 755 *.sh &&
screen -S lamp

sh ./lamp.sh