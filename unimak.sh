#!/usr/bin/env bash

cat station_information.json | jq -r '.data.stations[] | select(.has_kiosk == false and .capacity > 30) | .station_id' > /home/admin/mysolution
