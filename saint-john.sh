#!/usr/bin/env bash

kill $(lsof -t /var/log/bad.log)
