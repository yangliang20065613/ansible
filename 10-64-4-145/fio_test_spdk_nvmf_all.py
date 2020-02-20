#!/usr/bin/python

import sys
import os
import commands
import shutil
import signal
import time


bs = ['512b', '1k', '2k', '4k', '8k', '16k', '32k', '64k', '128k', '256k', '512k', '1024k']
#bs = ['4k', '1024k']
#qd = ['1', '2', '4', '8', '16', '32', '64', '128']

qd = ['1']
#rw_type = ['write', 'read', 'randwrite', 'randread'] 
rw_type = ['rw', 'randrw'] 

#rw_type = ['read']

def main():

    for item_rw in rw_type:

        with open("my.fio","r") as f:
            lines = f.readlines() 
        with open("my.fio","w") as f_w:
            for line in lines:
                if "rw=" in line:
                    new_line = "rw=" + item_rw + '\n'
                    f_w.write(new_line)
                else:
                    f_w.write(line)

        for item_qd in qd:
    
            for item_bs in bs:
                    
                fio_conf_filename = "./lat-new/" + item_bs + '-' + item_qd + 'q-' + item_rw + "50.fio"
    
                with open("my.fio","r") as f:
                    lines = f.readlines()
                with open("my.fio","w") as f_w:
                    for line in lines:
                        if "iodepth=" in line:
                            new_line = "iodepth=" + item_qd + '\n'
                            f_w.write(new_line)
                        elif "bs=" in line:
                            new_line = "bs=" + item_bs + '\n'
                            f_w.write(new_line)
                        elif "size=" in line:
                            new_line = "size=" + item_bs + '\n'
                            f_w.write(new_line)
                        elif "rwmixwrite=" in line:
                            new_line = "rwmixwrite=50" + '\n'
                            f_w.write(new_line)
                        else:
                            f_w.write(line)
                shutil.copy('./my.fio', fio_conf_filename)
                fio_conf_filename = "./lat-new/" + item_bs + '-' + item_qd + 'q-' + item_rw + "30.fio"
    
                with open("my.fio","r") as f:
                    lines = f.readlines()
                with open("my.fio","w") as f_w:
                    for line in lines:
                        if "iodepth=" in line:
                            new_line = "iodepth=" + item_qd + '\n'
                            f_w.write(new_line)
                        elif "bs=" in line:
                            new_line = "bs=" + item_bs + '\n'
                            f_w.write(new_line)
                        elif "size=" in line:
                            new_line = "size=" + item_bs + '\n'
                            f_w.write(new_line)
                        elif "rwmixwrite=" in line:
                            new_line = "rwmixwrite=30" + '\n'
                            f_w.write(new_line)
                        else:
                            f_w.write(line)
                shutil.copy('./my.fio', fio_conf_filename)
#                fio_file_name = "./fio_file_script/" + item_qd + "q-" + item_bs + "-" +  item_rw +  ".fio"
#                shutil.copy('./my.fio', fio_file_name)
    
#                result_file_name = item_bs + '-' + item_qd + 'q-' + item_rw
#                cmd = "LD_PRELOAD=/home/centos/yangl/fio/spdk/examples/bdev/fio_plugin/fio_plugin /home/centos/yangl/fio/fio/fio " + fio_conf_filename + "| tee -a ./result-ende/" + result_file_name
#                os.system(cmd);
#                echo = "echo \"" + cmd + "\" >> fio-en-bw.sh"
#                os.system(echo)


if __name__ == '__main__':
    main()
