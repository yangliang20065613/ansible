#!/usr/bin/python

import sys
import os
import commands
import shutil
import signal
import time


bs = ['512', '1024', '2048', '4096', '8192', '16384', '32768', '65536', '131072', '524288']
qd = ['1', '2', '4', '8', '16', '32', '64', '128']

def main():

    for item_qd in qd:

        for item_bs in bs:
            file_name = item_bs + '-' + item_qd + 'q-' + "write-1cpu-1cpu"
            cmd = "./perf -q "+ item_qd + " -s " + item_bs + " -w write -t 60 -c 0x2 -r 'trtype:RDMA adrfam:IPv4 traddr:192.168.4.38 trsvcid:4420'|tee -a ./result/" + file_name
            os.system(cmd);

    for item_qd in qd:

        for item_bs in bs:
            file_name = item_bs + '-' + item_qd + 'q-' + "read-1cpu-1cpu"
            cmd = "./perf -q "+ item_qd + " -s " + item_bs + " -w read -t 60 -c 0x2 -r 'trtype:RDMA adrfam:IPv4 traddr:192.168.4.38 trsvcid:4420'|tee -a ./result/" + file_name
            os.system(cmd);

#    for item_qd in qd:
#
#        for item_bs in bs:
#            file_name = item_bs + '-' + item_qd + 'q-' + "randwrite-1cpu-1cpu"
#            cmd = "./perf -q "+ item_qd + " -s " + item_bs + " -w randwrite -t 60 -c 0x2 -r 'trtype:RDMA adrfam:IPv4 traddr:192.168.4.38 trsvcid:4420'|tee -a ./result/" + file_name
#            os.system(cmd);
#
#    for item_qd in qd:
#
#        for item_bs in bs:
#            file_name = item_bs + '-' + item_qd + 'q-' + "randread-1cpu-1cpu"
#            cmd = "./perf -q "+ item_qd + " -s " + item_bs + " -w randread -t 60 -c 0x2 -r 'trtype:RDMA adrfam:IPv4 traddr:192.168.4.38 trsvcid:4420'|tee -a ./result/" + file_name
#            os.system(cmd);


if __name__ == '__main__':
    main()
