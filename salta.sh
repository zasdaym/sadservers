#!/usr/bin/env bash

sudo netstat -tulpn | grep ':8888'
sudo systemctl stop nginx

cd /home/admin/app
sed -i '/^EXPOSE/d' Dockerfile
sed -i 's/serve.js/server.js/g' Dockerfile
sudo docker build -t app .
sudo docker run --name app -d -p 8888:8888 app
curl lcoalhost:8888
