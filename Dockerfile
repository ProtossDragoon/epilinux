FROM ubuntu:20.04

RUN apt-get update && apt-get install -y build-essential git \
    && rm -rf /var/lib/apt/lists/*

RUN ln -snf /usr/share/zoneinfo/Europe/Paris /etc/localtime && \
    echo Europe/Paris > /etc/timezone
 
RUN apt-get update && apt-get install -y vim

# Network debugging tool
RUN apt-get update && apt-get install -y ncat

# Some other useful tools 
RUN apt-get update && apt-get install -y pkg-config libglib2.0-dev
RUN apt-get update && apt-get install -y bc 

WORKDIR /root/epita

ENTRYPOINT /usr/bin/bash
