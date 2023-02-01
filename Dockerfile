FROM ubuntu:22.04

RUN apt-get update \
  && apt-get install -y python3 python3-pip python3-dev
RUN python3 -m pip install ansible

RUN apt-get update && apt-get install -y openssh-server
RUN apt-get update && apt-get install -y vim

# Copy hosts to ansible directory
COPY hosts /etc/ansible/hosts
