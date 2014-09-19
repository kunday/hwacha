FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y openjdk-6-jdk
ADD . /root/

RUN wget -nc -nv http://download.go.cd/gocd-deb/go-agent-14.2.0-377.deb
RUN dpkg -i go-agent-14.2.0-377.deb
USER go

CMD /usr/share/go-agent/agent.sh && tail -F /var/log/go-agent/go-agent.log
