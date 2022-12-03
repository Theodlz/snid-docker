FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl build-essential software-properties-common && \
    apt-get -y upgrade && apt-get install -y git

RUN git clone https://github.com/Theodlz/snid-install-ubuntu.git

RUN cd snid-install-ubuntu && chmod +x install.sh && bash ./install.sh
