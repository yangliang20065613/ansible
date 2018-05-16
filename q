diff --git a/physical_machine/deployment-vars b/physical_machine/deployment-vars
index e120b85..3f48978 100644
--- a/physical_machine/deployment-vars
+++ b/physical_machine/deployment-vars
@@ -13,10 +13,10 @@ ceph_cinder_pass: "AQCBHc9X7x2NLBAA2nKjpTpUaH5eHv6+FqvZog=="
 ceph_osd_pool_default_size: "3"
 
 # explicitly define the public and private network interface
-ceph_public_iface: "enP4p1s0"
+#ceph_public_iface: "enP4p1s0"
 ceph_private_iface: "enp1s0"
 ceph_public_netmask: "24"
-ceph_private_netmask: "23"
+ceph_private_netmask: "24"
 
 # osd device name on each storage node
 ceph_host_osds:
diff --git a/physical_machine/host_vars/ceph-rep-01 b/physical_machine/host_vars/ceph-rep-01
deleted file mode 100644
index 0d8d3ce..0000000
--- a/physical_machine/host_vars/ceph-rep-01
+++ /dev/null
@@ -1,6 +0,0 @@
-ceph_host_osds:
-  - sdb
-  - sdc
-  - sdd
-  - sde
-  - sdh
diff --git a/physical_machine/host_vars/ceph-rep-02 b/physical_machine/host_vars/ceph-rep-02
deleted file mode 100644
index a9e340c..0000000
--- a/physical_machine/host_vars/ceph-rep-02
+++ /dev/null
@@ -1,6 +0,0 @@
-ceph_host_osds:
-  - sdb
-  - sdc
-  - sdd
-  - sdg
-  - sdh
diff --git a/physical_machine/host_vars/ceph-rep-03 b/physical_machine/host_vars/ceph-rep-03
deleted file mode 100644
index cfc2bec..0000000
--- a/physical_machine/host_vars/ceph-rep-03
+++ /dev/null
@@ -1,6 +0,0 @@
-ceph_host_osds:
-  - sda
-  - sdb
-  - sdc
-  - sdd
-  - sdh
diff --git a/physical_machine/hosts b/physical_machine/hosts
index 9d5114f..326cd3a 100644
--- a/physical_machine/hosts
+++ b/physical_machine/hosts
@@ -1,9 +1,9 @@
 [ceph_monitor_servers]
-ceph-rep-01
-ceph-rep-02
-ceph-rep-03
+ceph-rep-04
+ceph-rep-05
+ceph-rep-06
 
 [ceph_osd_servers]
-ceph-rep-01
-ceph-rep-02
-ceph-rep-03
+ceph-rep-04
+ceph-rep-05
+ceph-rep-06
