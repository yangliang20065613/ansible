LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/512b-1q-write.fio| tee -a ./result-no-ende/512b-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/1k-1q-write.fio| tee -a ./result-no-ende/1k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/2k-1q-write.fio| tee -a ./result-no-ende/2k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/4k-1q-write.fio| tee -a ./result-no-ende/4k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/8k-1q-write.fio| tee -a ./result-no-ende/8k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/16k-1q-write.fio| tee -a ./result-no-ende/16k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/32k-1q-write.fio| tee -a ./result-no-ende/32k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/64k-1q-write.fio| tee -a ./result-no-ende/64k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/128k-1q-write.fio| tee -a ./result-no-ende/128k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/256k-1q-write.fio| tee -a ./result-no-ende/256k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/512k-1q-write.fio| tee -a ./result-no-ende/512k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/1024k-1q-write.fio| tee -a ./result-no-ende/1024k-1q-write
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/512b-1q-read.fio| tee -a ./result-no-ende/512b-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/1k-1q-read.fio| tee -a ./result-no-ende/1k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/2k-1q-read.fio| tee -a ./result-no-ende/2k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/4k-1q-read.fio| tee -a ./result-no-ende/4k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/8k-1q-read.fio| tee -a ./result-no-ende/8k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/16k-1q-read.fio| tee -a ./result-no-ende/16k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/32k-1q-read.fio| tee -a ./result-no-ende/32k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/64k-1q-read.fio| tee -a ./result-no-ende/64k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/128k-1q-read.fio| tee -a ./result-no-ende/128k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/256k-1q-read.fio| tee -a ./result-no-ende/256k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/512k-1q-read.fio| tee -a ./result-no-ende/512k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/1024k-1q-read.fio| tee -a ./result-no-ende/1024k-1q-read
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/512b-1q-randwrite.fio| tee -a ./result-no-ende/512b-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/1k-1q-randwrite.fio| tee -a ./result-no-ende/1k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/2k-1q-randwrite.fio| tee -a ./result-no-ende/2k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/4k-1q-randwrite.fio| tee -a ./result-no-ende/4k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/8k-1q-randwrite.fio| tee -a ./result-no-ende/8k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/16k-1q-randwrite.fio| tee -a ./result-no-ende/16k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/32k-1q-randwrite.fio| tee -a ./result-no-ende/32k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/64k-1q-randwrite.fio| tee -a ./result-no-ende/64k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/128k-1q-randwrite.fio| tee -a ./result-no-ende/128k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/256k-1q-randwrite.fio| tee -a ./result-no-ende/256k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/512k-1q-randwrite.fio| tee -a ./result-no-ende/512k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/1024k-1q-randwrite.fio| tee -a ./result-no-ende/1024k-1q-randwrite
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/512b-1q-randread.fio| tee -a ./result-no-ende/512b-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/1k-1q-randread.fio| tee -a ./result-no-ende/1k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/2k-1q-randread.fio| tee -a ./result-no-ende/2k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/4k-1q-randread.fio| tee -a ./result-no-ende/4k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/8k-1q-randread.fio| tee -a ./result-no-ende/8k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/16k-1q-randread.fio| tee -a ./result-no-ende/16k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/32k-1q-randread.fio| tee -a ./result-no-ende/32k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/64k-1q-randread.fio| tee -a ./result-no-ende/64k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/128k-1q-randread.fio| tee -a ./result-no-ende/128k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/256k-1q-randread.fio| tee -a ./result-no-ende/256k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/512k-1q-randread.fio| tee -a ./result-no-ende/512k-1q-randread
LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio ./fio_conf_file/1024k-1q-randread.fio| tee -a ./result-no-ende/1024k-1q-randread
