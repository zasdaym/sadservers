#!/usr/bin/env bash

cd /home/admin
./kihei -h
./kihei -v
sudo lsblk -l
sudo pvcreate /dev/nvme1n1 /dev/nvme2n1
sudo vgcreate vg1 /dev/nvme1n1 /dev/nvme2n1
sudo lvcreate -l 100%FREE -n lv1 vg1
sudo mkfs.ext4 /dev/vg1/lv1
sudo mount /dev/vg1/lv1 /home/admin/data
sudo chown -R admin:admin /home/admin/data
./kihei
