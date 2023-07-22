#!/usr/bin/env bash

cut -d " " -f 1 /home/admin/access.log |
    sort |
    uniq -c |
    sort |
    tail -n 1 |
    tr -s ' ' |
    cut -d ' ' -f 3 >/home/admin/highestip.txt
