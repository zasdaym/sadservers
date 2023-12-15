#!/usr/bin/env bash

sed -i 's/reject/peer/g' /etc/postgresql/13/main/pg_hba.conf
sudo systemctl restart postgresql@13-main.service
