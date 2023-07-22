#!/usr/bin/env bash

tail -n 50 /var/log/syslog
journalctl -p err --no-pager

rm -rf /opt/pgdata/deleteme
rm -rf /opt/pgdata/*.bak
systemctl restart postgresql.service
