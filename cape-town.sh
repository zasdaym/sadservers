#!/usr/bin/env bash

sudo systemctl status -l nginx
sudo sed -i '1d' /etc/nginx/sites-available/default
sudo systemctl restart nginx

curl localhost
tail /var/log/nginx/error.log
sudo sed -i '/^LimitNOFILE/d' /etc/systemd/system/nginx.service
sudo systemctl daemon-reload
sudo systemctl restart nginx
