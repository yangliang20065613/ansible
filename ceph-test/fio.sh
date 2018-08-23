#fio -pool=spdktest -rbdname=image -direct=1 -iodepth 1 -rw=randwrite -ioengine=rbd -bs=4k -numjobs=1 -runtime=60
taskset -c 9 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=1 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-1q-randwrite-1cpu
taskset -c 9 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=1 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-1q-randwrite-1cpu
taskset -c 9 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=1 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-1q-randwrite-1cpu
taskset -c 9 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=1 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-1q-randwrite-1cpu
taskset -c 9 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=1 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-1q-randwrite-1cpu
taskset -c 9 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=1 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-1q-randwrite-1cpu
taskset -c 9 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=256k -runtime=120 -numjobs=1 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/256k-1q-randwrite-1cpu


taskset -c 1-32 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=32 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-2q-randwrite-32cpu
taskset -c 1-32 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=32 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-2q-randwrite-32cpu
taskset -c 1-32 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=32 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-2q-randwrite-32cpu
taskset -c 1-32 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=32 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-2q-randwrite-32cpu
taskset -c 1-32 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=32 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-2q-randwrite-32cpu
taskset -c 1-32 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=32 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-2q-randwrite-32cpu
taskset -c 1-32 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=256k -runtime=120 -numjobs=32 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/256k-2q-randwrite-32cpu



