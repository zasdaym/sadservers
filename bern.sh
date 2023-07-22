#!/usr/bin/env bash

sudo docker ps
sudo docker inspect wordpress
sudo docker inspect mariadb
# Default WORDPRESS_DB_HOST is mysql, rather than changing the env var, we can rename the container
sudo docker rename mariadb mysql

# Docker's embedded DNS server only works with user-defined networks
sudo docker network create wp
sudo docker network connect wp wordpress
sudo docker network connect wp mysql
