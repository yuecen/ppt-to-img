FROM ubuntu:latest
MAINTAINER yuecen <yuecendev+docker@gmail.com> 
WORKDIR /root 
RUN build_deps="python-dev build-essential" && \ 
    apt-get update -y && apt-get install -y python-pip ${build_deps} && \ 
    apt-get install -y wget && \ 
    apt-get install -y unoconv && \ 
    apt-get install -y libreoffice && \ 
    apt-get install -y imagemagick && \ 
    apt-get purge -y --auto-remove ${build_deps} && \ 
    apt-get autoremove -y

RUN yes | apt-get install -y ttf-mscorefonts-installer && \ 
    apt-get install -y wget && \ 
    apt-get install -y cabextract && \ 
    mkdir -p /root/.fonts && \ 
    wget -qO- http://plasmasturm.org/code/vistafonts-installer/vistafonts-installer | bash

ENV HOME /root
