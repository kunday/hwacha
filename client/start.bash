#!/bin/bash

docker run  -it \
  --privileged \
  --link go-server:go \
  kunday/go-agent:latest
