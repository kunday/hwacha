## What is hwacha?
Hwacha is a dockerized gocd server to evaluate gocd or run it in prodcution.

## About go cd
Go is a open source continuous Integration and Release Management system
from thoughtworks. If you haven't used gocd before, head to their [community
documentation](https://github.com/gocd/documentation) for a quick intro.

## Requirements

* Hwacha is based on [docker](docker.io) so you'll need docker.
* [Fig](fig.sh) if you would like to use fig to bring the containers using
  fig.

## Running
Clone hwacha into your dev workspace or server:

    git clone https://kunday@bitbucket.org/kunday/hwacha.git

You can now bring up go server and one agent using:

    fig up

To increase the number of agents, run

    fig scale agent=4

You should be able to access go server running at

    http://localhost:8153/go

If you are running using a vm, use the ip address of that host.

## Structure
The project is structured into 3 dockerized containers base(common packages
for agent and server), server(the go server) and client(the go agent
container).

## Building
Build the base container inside the base folder:

    cd base && make

Build the go server container inside the server folder:

    cd server && make

Build the go agent container inside the client folder:

    cd client && make

You should now have 3 different containers when you run `docker images`

    kunday/go-base:latest
    kunday/go-server:latest
    kunday/go-agent:latest

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
