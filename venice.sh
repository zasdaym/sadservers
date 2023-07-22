#!/usr/bin/env bash

cat /.dockerenv
grep docker /proc/1/cgroup
