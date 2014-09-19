FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y openjdk-6-jdk
RUN apt-get install -y unzip wget

RUN wget -nc -nv http://download.go.cd/gocd-deb/go-server-14.2.0-377.deb
RUN dpkg -i go-server-14.2.0-377.deb
USER go

CMD /usr/share/go-server/server.sh && tail -f /var/log/go-server/go-server.log
