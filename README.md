#hwacha

## Getting Started
Hwacha is a dockerized gocd server to get started with go server quick.

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
