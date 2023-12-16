#!/usr/bin/env bash

curl -H "User-Agent: Unknown" localhost:5000 | awk '{print $4}' >/home/admin/mysolution
