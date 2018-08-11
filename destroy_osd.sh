#!/bin/sh
systemctl stop ceph-osd.target
systemctl disable ceph-osd@0
systemctl disable ceph-osd@1
ceph osd out osd.0
ceph osd out osd.1
ceph osd crush rm osd.0
ceph osd crush rm osd.1
ceph auth del osd.0
ceph auth del osd.1
ceph osd rm osd.0
ceph osd rm osd.1
rm -rf /var/lib/ceph/osd/ceph-*
rm -rf /var/log/ceph/ceph-osd.*
/home/liang/ceph-bjsss013/ceph/src/spdk/scripts/setup.sh reset
mkfs.ext4 -T largefile /dev/nvme0n1
mkfs.ext4 -T largefile /dev/nvme1n1
mount /dev/nvme0n1 /mnt/
dd if=/dev/zero of=/mnt/test bs=60M count=10000 &
mount /dev/nvme1n1 /home/liang/mnt/
dd if=/dev/zero of=/home/liang/mnt/test bs=60M count=10000 &

