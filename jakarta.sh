#!/usr/bin/env bash

ping -c 1 -W 1 google.com
cat /etc/resolv.conf
cat /etc/nswitch.conf
sudo sed -i 's/^hosts:.*/hosts:          files dns/' /etc/nsswitch.conf
ping -c 1 -W 1 google.com
