#!/bin/bash

docker build -f Dockerfile_test_ubuntu32 -t ubuntu-32-influxdb-test .
docker run -t ubuntu-32-influxdb-test bash -c "cd ~/go/src/github.com/influxdb/influxdb && go get ./... && go build ./... && go test ./..."
