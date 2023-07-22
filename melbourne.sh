#!/usr/bin/env bash

sudo sed -i 's/gunicorn.socket/gunicorn.sock/g' /etc/nginx/sites-available/default
sudo systemctl reload nginx

sudo sed -i "s/'0'/'13'/g" /home/admin/wsgi.py
sudo systemctl restart gunicorn

curl localhost
