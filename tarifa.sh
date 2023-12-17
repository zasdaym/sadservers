#!/usr/bin/env bash

sed -i 's/81/80/g' custom-nginx_1.conf
sed -i 's/- frontend/- backend/g' docker-compose.yml

docker compose up -d
docker compose restart
