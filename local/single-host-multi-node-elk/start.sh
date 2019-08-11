#!/usr/bin/env bash
docker-compose down --volumes

docker-compose up -d --build
