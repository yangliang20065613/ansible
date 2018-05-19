#!/bin/sh


#touch test
#echo "rtwer" >> test




sudo rm -rf  /etc/systemd/system/ceph-mgr.target.wants/

sudo rm -rf  /etc/systemd/system/ceph-mon.target.wants/

sudo rm -rf  /var/lib/ceph/

sudo rm -rf  /etc/systemd/system/multi-user.target.wants/ceph-mon.target

sudo rm -rf  /etc/systemd/system/ceph-osd.target.wants

sudo rm -rf  /etc/systemd/system/ceph.target.wants
