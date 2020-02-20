#!/usr/bin/python

import sys
import os
import commands
import shutil
import signal
import time


opt = ['write', 'read', 'randwrite', 'randread']

def main():

    for item_opt in opt:
        file_name = item_opt + '-64q-16cpu-' + "4cpuclt"
        cmd = "./perf -q 64 -s 512 -w " + item_opt + " -t 60 -c 0x1e -r 'trtype:RDMA adrfam:IPv4 traddr:192.168.4.38 trsvcid:4420'"
        os.system(cmd);

if __name__ == '__main__':
    main()
