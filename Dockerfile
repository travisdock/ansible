FROM ubuntu:22.04

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 --no-cache-dir install --upgrade pip \
  && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y openssh-server
RUN apt-get update && apt-get install -y vim
RUN python3 -m pip install --user ansible
