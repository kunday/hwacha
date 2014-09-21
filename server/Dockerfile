FROM kunday/go-base

RUN wget -nc -nv http://download.go.cd/gocd-deb/go-server-14.2.0-377.deb
RUN dpkg -i go-server-14.2.0-377.deb

ADD cruise-config.xml /etc/go/cruise-config.xml
RUN chown go:go /etc/go/cruise-config.xml

CMD /usr/share/go-server/server.sh && tail -f /var/log/go-server/go-server.log
