#fio -pool=spdktest -rbdname=image -direct=1 -iodepth 1 -rw=randwrite -ioengine=rbd -bs=4k -numjobs=1 -runtime=60
taskset -c 9 fio 512-1q.fio |tee -a ./result/fio/512B-1q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512-1q-randwrite
sleep 50

taskset -c 9 fio 4k-1q.fio |tee -a ./result/fio/4k-1q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-1q-randwrite
sleep 50


taskset -c 9 fio 8k-1q.fio |tee -a ./result/fio/8k-1q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-1q-randwrite
sleep 50


taskset -c 9 fio 16k-1q.fio |tee -a ./result/fio/16k-1q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-1q-randwrite
sleep 50


taskset -c 9 fio 32k-1q.fio |tee -a ./result/fio/32k-1q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-1q-randwrite
sleep 50


taskset -c 9 fio 64k-1q.fio |tee -a ./result/fio/64k-1q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-1q-randwrite
sleep 50


taskset -c 9 fio 256k-1q.fio |tee -a ./result/fio/256k-1q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/256k-1q-randwrite
sleep 50



taskset -c 9 fio 512-32q.fio |tee -a ./result/fio/512B-32q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/512-32q-randwrite
sleep 50

taskset -c 9 fio 4k-32q.fio |tee -a ./result/fio/4k-32q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/4k-32q-randwrite
sleep 50


taskset -c 9 fio 8k-32q.fio |tee -a ./result/fio/8k-32q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/8k-32q-randwrite
sleep 50


taskset -c 9 fio 16k-32q.fio |tee -a ./result/fio/16k-32q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/16k-32q-randwrite
sleep 50


taskset -c 9 fio 32k-32q.fio |tee -a ./result/fio/32k-32q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/32k-32q-randwrite
sleep 50


taskset -c 9 fio 64k-32q.fio |tee -a ./result/fio/64k-32q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/64k-32q-randwrite
sleep 50


taskset -c 9 fio 256k-32q.fio |tee -a ./result/fio/256k-32q-randwrite &
sleep 30
sar -u ALL 1 60 |tee -a ./result/sar/256k-32q-randwrite
sleep 50
