#fio -pool=spdktest -rbdname=image -direct=1 -iodepth 1 -rw=randwrite -ioengine=rbd -bs=4k -numjobs=1 -runtime=60
taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-1q-randwrite-3cpu &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512B-1q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-1q-randwrite-3cpu &

sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-1q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-1q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-1q-randwrite-3cpu
sleep 50


taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-1q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-1q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-1q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-1q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-1q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-1q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=128k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/128k-1q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/128k-1q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 1 -thread -rw=randwrite -ioengine=libaio -bs=512k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512k-1q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512k-1q-randwrite-3cpu
sleep 50


taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-2q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512B-2q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-2q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-2q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-2q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-2q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-2q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-2q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-2q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-2q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-2q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-2q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=128k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/128k-2q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/128k-2q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 2 -thread -rw=randwrite -ioengine=libaio -bs=512k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512k-2q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512k-2q-randwrite-3cpu
sleep 50



taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 4 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-4q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512B-4q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 4 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-4q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-4q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 4 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-4q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-4q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 4 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-4q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-4q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 4 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-4q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-4q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 4 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-4q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-4q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 4 -thread -rw=randwrite -ioengine=libaio -bs=128k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/128k-4q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/128k-4q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 4 -thread -rw=randwrite -ioengine=libaio -bs=512k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512k-4q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512k-4q-randwrite-3cpu
sleep 50


taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-8q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512B-8q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-8q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-8q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-8q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-8q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-8q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-8q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-8q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-8q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-8q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-8q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=128k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/128k-8q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/128k-8q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 8 -thread -rw=randwrite -ioengine=libaio -bs=512k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512k-8q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512k-8q-randwrite-3cpu
sleep 50




taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-16q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512B-16q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-16q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-16q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-16q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-16q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-16q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-16q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-16q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-16q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-16q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-16q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=128k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/128k-16q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/128k-16q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 16 -thread -rw=randwrite -ioengine=libaio -bs=512k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512k-16q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512k-16q-randwrite-3cpu
sleep 50




taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-32q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512B-32q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-32q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-32q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-32q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-32q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-32q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-32q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-32q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-32q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-32q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-32q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=128k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/128k-32q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/128k-32q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=512k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512k-32q-randwrite-3cpu &



sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512k-32q-randwrite-3cpu
sleep 50



taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 64 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-64q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512B-64q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 64 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-64q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-64q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 64 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-64q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-64q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 64 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-64q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-64q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 64 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-64q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-64q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 64 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-64q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-64q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 64 -thread -rw=randwrite -ioengine=libaio -bs=128k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/128k-64q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/128k-64q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 64 -thread -rw=randwrite -ioengine=libaio -bs=512k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512k-64q-randwrite-3cpu &



sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512k-64q-randwrite-3cpu
sleep 50


taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 128 -thread -rw=randwrite -ioengine=libaio -bs=512 -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512B-128q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512B-128q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 128 -thread -rw=randwrite -ioengine=libaio -bs=4k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/4k-128q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-128q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 128 -thread -rw=randwrite -ioengine=libaio -bs=8k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/8k-128q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-128q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 128 -thread -rw=randwrite -ioengine=libaio -bs=16k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/16k-128q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-128q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 128 -thread -rw=randwrite -ioengine=libaio -bs=32k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/32k-128q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-128q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 128 -thread -rw=randwrite -ioengine=libaio -bs=64k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/64k-128q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-128q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 128 -thread -rw=randwrite -ioengine=libaio -bs=128k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/128k-128q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/128k-128q-randwrite-3cpu
sleep 50

taskset -c 9-11 fio -filename=/dev/nvme0n1 -direct=1 -iodepth_batch_complete=1  -iodepth 128 -thread -rw=randwrite -ioengine=libaio -bs=512k -runtime=120 -numjobs=3 -time_based -group_reporting -norandommap=1  -randrepeat=0  -name=test1 |tee -a ./result/512k-128q-randwrite-3cpu &


sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512k-128q-randwrite-3cpu
sleep 50
