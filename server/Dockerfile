FROM kunday/go-base

RUN wget -nc -nv https://download.go.cd/binaries/16.4.0-3223/deb/go-server-16.4.0-3223.deb
RUN dpkg -i go-server-16.4.0-3223.deb

ADD cruise-config.xml /etc/go/cruise-config.xml
RUN chown go:go /etc/go/cruise-config.xml

CMD /usr/share/go-server/server.sh && tail -f /var/log/go-server/go-server.log
