FROM kunday/go-base

RUN wget -nc -nv https://download.go.cd/binaries/16.4.0-3223/deb/go-agent-16.4.0-3223.deb
RUN dpkg -i go-agent-16.4.0-3223.deb
USER go

ADD autoregister.properties /var/lib/go-agent/config/autoregister.properties
ADD go-agent /etc/default/
CMD /usr/share/go-agent/agent.sh && tail -F /var/log/go-agent/go-agent.log
