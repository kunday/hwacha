#!/bin/bash

docker run --privileged -p 8153:8153 -d --name go-server kunday/go-server:latest
