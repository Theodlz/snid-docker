# use ubuntu 20.04 and enforce amd64 architecture
FROM --platform=linux/amd64 ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl build-essential software-properties-common && \
    apt-get -y upgrade && apt-get install -y git

RUN git clone https://github.com/Theodlz/snid-install-ubuntu.git

WORKDIR /snid-install-ubuntu

RUN chmod +x install.sh && bash ./install.sh
