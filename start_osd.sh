#!/bin/sh


HUGEMEM=8192 PCI_WHITELIST="0004:01:00.0" /home/liang/ceph-bjsss013/ceph/src/spdk/scripts/setup.sh
ceph osd create
mkdir /var/lib/ceph/osd/ceph-0
chmod 0755 /var/lib/ceph/osd/ceph-0
chown ceph:ceph /var/lib/ceph/osd/ceph-0
ceph auth get-or-create osd.0 mon 'allow profile osd' osd 'allow *' -o /var/lib/ceph/osd/ceph-0/keyring
ceph-osd -i 0 --mkfs
systemctl enable ceph-osd@0
systemctl start ceph-osd.target


HUGEMEM=8192 PCI_WHITELIST="0000:01:00.0" /home/liang/ceph-bjsss013/ceph/src/spdk/scripts/setup.sh
ceph osd create
mkdir /var/lib/ceph/osd/ceph-1
chmod 0755 /var/lib/ceph/osd/ceph-1
chown ceph:ceph /var/lib/ceph/osd/ceph-1
ceph auth get-or-create osd.1 mon 'allow profile osd' osd 'allow *' -o /var/lib/ceph/osd/ceph-1/keyring
ceph-osd -i 1 --mkfs
systemctl enable ceph-osd@1
systemctl start ceph-osd.target
