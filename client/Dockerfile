FROM kunday/go-base

RUN wget -nc -nv http://download.go.cd/gocd-deb/go-agent-14.2.0-377.deb
RUN dpkg -i go-agent-14.2.0-377.deb
USER go

ADD autoregister.properties /var/lib/go-agent/config/autoregister.properties
ADD go-agent /etc/default/
CMD /usr/share/go-agent/agent.sh && tail -F /var/log/go-agent/go-agent.log
