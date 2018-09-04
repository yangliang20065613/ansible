#!/usr/bin/python

import sys
import os
import commands
import shutil
import signal
import xlsxwriter


bs = ['512B', '4k', '8k', '16k', '32k', '64k', '128k', '512k']
qd = ['1q', '2q', '4q', '8q', '16q', '32q', '64q', '128q'] 

def main():
#    with open('./4k-32q-read-4cpu', 'r') as f:
#        for line in f.readlines():
#            print(line.strip())
#        lines = f.readlines()
#        last_line = lines[-2]
#        result=last_line.split()
#        print(result)
#        print(last_line.strip())

#    reload(sys)
#    sys.setdefaultencoding("utf-8")
#     
#    workbook = xlsxreadr.Workbook("./4cpu-result.xlsx")
#    worksheet = workbook.add_worksheet()
#     
#    bold = workbook.add_format({'bold':True})
#     
#    worksheet.read('A1','data',bold)
#    worksheet.read('B1','work')


    
    file_bw = "2/" + "randread-2cpu-bw"
    file_lat = "2/" + "randread-2cpu-lat"
    file_iops = "2/" + "randread-2cpu-iops"

    for item_qd in qd:
#        file_bw = "2/" + item_qd + '-' + "read-4cpu-bw"
#        file_lat = "2/" + item_qd + '-' + "read-4cpu-lat"
#        file_iops = "2/" + item_qd + '-' + "read-4cpu-iops"
        cmd_midd_bw = "echo -e '\n' >> " +  file_bw
        os.system(cmd_midd_bw)
        cmd_midd_bw = "echo "+ item_qd + " >> " +  file_bw
        os.system(cmd_midd_bw)
        cmd_midd_bw = "echo -e '\n' >> " +  file_bw
        os.system(cmd_midd_bw)

        cmd_midd_lat = "echo -e '\n' >> " +  file_lat
        os.system(cmd_midd_lat)
        cmd_midd_lat = "echo "+ item_qd + " >> " +  file_lat
        os.system(cmd_midd_lat)
        cmd_midd_lat = "echo -e '\n' >> " +  file_lat
        os.system(cmd_midd_lat)

        cmd_midd_iops = "echo -e '\n' >> " +  file_iops
        os.system(cmd_midd_iops)
        cmd_midd_iops = "echo "+ item_qd + " >> " +  file_iops
        os.system(cmd_midd_iops)
        cmd_midd_iops = "echo -e '\n' >> " +  file_iops
        os.system(cmd_midd_iops)

        for item_bs in bs:
            file_name = item_bs + '-' + item_qd + '-' + "randread-2cpu"
            with open(file_name, 'r') as f:
                lines = f.readlines()
                last_line = lines[-2]
                result=last_line.split()
                cmd_iops = "echo "+ result[2] + " >> " +  file_iops
#                print(cmd_iops)
                os.system(cmd_iops);
                cmd_bw = "echo "+ result[3] + " >> " +  file_bw
                os.system(cmd_bw)
                cmd_lat = "echo "+ result[4] + " >> " +  file_lat
                os.system(cmd_lat)
                print(result)

if __name__ == '__main__':
    main()
