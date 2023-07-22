#!/usr/bin/env bash

lsof -i ':80'

iptables -F
chown -R www-data:www-data /var/www/
