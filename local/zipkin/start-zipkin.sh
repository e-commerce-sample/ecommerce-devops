#!/usr/bin/env bash

docker rm -f zipkin
docker run -d -p 9411:9411 --name zipkin openzipkin/zipkin