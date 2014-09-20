#!/bin/bash

docker run  -it \
  --link go-server:go \
  kunday/go-agent:latest
