LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file_bw_8core/4k-64q-write.fio| tee -a ./result-ende/4k-64q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file_bw_8core/1024k-64q-write.fio| tee -a ./result-ende/1024k-64q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file_bw_8core/4k-64q-read.fio| tee -a ./result-ende/4k-64q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file_bw_8core/1024k-64q-read.fio| tee -a ./result-ende/1024k-64q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file_bw_8core/4k-64q-randwrite.fio| tee -a ./result-ende/4k-64q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file_bw_8core/1024k-64q-randwrite.fio| tee -a ./result-ende/1024k-64q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file_bw_8core/4k-64q-randread.fio| tee -a ./result-ende/4k-64q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file_bw_8core/1024k-64q-randread.fio| tee -a ./result-ende/1024k-64q-randread
