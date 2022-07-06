#!/bin/sh
docker stop xrofi

IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

echo "XSERVER_IP=${IP}" > builder/.env

xhost +"${IP}"

docker-compose -f "$(pwd)/builder/docker-compose.yml" up -d --build --remove-orphans

sudo ln -sf $(pwd)/bin/rofi /usr/local/bin/rofi