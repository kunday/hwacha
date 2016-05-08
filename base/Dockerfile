FROM ubuntu:14.04

RUN apt-get -y update
RUN apt-get install -y apt-transport-https

RUN echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

RUN apt-get -y update
RUN apt-get install -y openjdk-7-jdk unzip wget git-core make iptables ca-certificates lxc lxc-docker

CMD []
