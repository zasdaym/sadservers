#!/usr/bin/env bash

lsof /home/admin/somefile
exec 77 <&-
