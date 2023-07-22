#!/usr/bin/env bash

etcdctl get foo
sudo timedatectl set-time "2023-01-01 00:00:00"
curl $ETCDCTL_ENDPOINT
iptables -t nat -nL
iptables -t nat -R OUTPUT 1
