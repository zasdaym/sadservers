#!/usr/bin/env bash

cd /home/admin
sudo perl -e 'chmod 0755, "/usr/bin/chmod"'
sudo chmod +x ./wtfit
strace ./wtfit
touch wtfitconfig.conf
python3 -m http.server 7777 &
./wtfit
