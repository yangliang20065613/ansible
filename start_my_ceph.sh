#!/bin/sh


#touch test
#echo "rtwer" >> test

rm -rf /etc/ceph
cp -rf /etc/ceph_bak /etc/ceph

rm -rf /var/lib/ceph/mon/
mkdir /var/lib/ceph/mon/
chmod 0755 /var/lib/ceph/mon/
mkdir /var/lib/ceph/mon/ceph-ceph-rep-05
chmod 0755 /var/lib/ceph/mon/ceph-ceph-rep-05
monmaptool --create --add ceph-rep-05 10.5.21.150:6789  --fsid "e05d6376-6965-4c48-9b36-b8f5c518e3b9" "/etc/ceph/ceph.monmap"
ceph-mon --cluster ceph --setuser root --setgroup root --mkfs -i ceph-rep-05 --fsid "e05d6376-6965-4c48-9b36-b8f5c518e3b9" -f -d --keyring "/etc/ceph/ceph.mon.ceph-rep-05.keyring" --monmap "/etc/ceph/ceph.monmap"
ceph-mon -i ceph-rep-05

ceph --cluster ceph auth get-or-create mgr.ceph-rep-05 mon 'allow profile mgr' osd 'allow *' mds 'allow *' -o /etc/ceph/ceph.mgr.ceph-rep-05.keyring
rm -rf /var/lib/ceph/mgr
mkdir /var/lib/ceph/mgr
chmod 0755 /var/lib/ceph/mgr
mkdir /var/lib/ceph/mgr/ceph-ceph-rep-05
chmod 0755 /var/lib/ceph/mgr/ceph-ceph-rep-05
cp /etc/ceph/ceph.mgr.ceph-rep-05.keyring /var/lib/ceph/mgr/ceph-ceph-rep-05/keyring 
/usr/bin/ceph-mgr -i ceph-rep-05

cp /etc/ceph/ceph.client.bootstrap-osd.keyring /var/lib/ceph/bootstrap-osd/ceph.keyring
ceph osd create
rm -rf /var/lib/ceph/osd/ceph-0/
mkdir /var/lib/ceph/osd/ceph-0/
chmod 0755 /var/lib/ceph/osd/ceph-0/
chown ceph:ceph /var/lib/ceph/osd/ceph-0/
ceph auth get-or-create osd.0 mon 'allow rwx' osd 'allow *' -o /var/lib/ceph/osd/ceph-0/keyring
ceph-osd -i 0 --mkfs --osd-data=/var/lib/ceph/osd/ceph-0 -c /etc/ceph/ceph.conf --debug_osd 20 --debug_bdev 20 --mkkey
ceph-osd -i 0
