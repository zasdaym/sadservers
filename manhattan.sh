#!/usr/bin/env bash

rm -rf /opt/pgdata/deleteme
rm -rf /opt/pgdata/*.bak
systemctl restart postgresql.service
