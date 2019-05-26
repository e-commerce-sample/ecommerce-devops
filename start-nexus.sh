#!/usr/bin/env bash

docker rm -f ecommerce-nexus
docker run -d -p 9091:8081 --name ecommerce-nexus -e JAVA_MAX_MEM=4096m -e JAVA_MIN_MEM=2048m -v ecommerce-nexus-data-volume:/nexus-data sonatype/docker-nexus3