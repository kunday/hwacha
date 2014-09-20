FROM kunday/go-base

RUN wget -nc -nv http://download.go.cd/gocd-deb/go-server-14.2.0-377.deb
RUN dpkg -i go-server-14.2.0-377.deb
USER go

CMD /usr/share/go-server/server.sh && tail -f /var/log/go-server/go-server.log
