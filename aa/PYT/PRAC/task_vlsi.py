#!/usr/bin/python3
import re


def Read_file(file):
    dict = {}
    dd = {} 
    kk = ''
    key = ''
    val = ''
    fh = open(file,"r")
    for line in fh.readlines():
        line = line.strip()
        if re.match(r'##.*',line):
            #print (line)
            aa = re.search(r'\##(\w+)',line);
            if aa:
               # print (aa.group(1))
                kk = aa.group(1)
                print (kk)
        else:
           
           bb = re.search(r'(\w.+)\=(\w+)',line);
           if bb:
               key = bb.group(1)
               val = bb.group(2)
               dd[key] = val
               dict[kk] = dd
     
    #print (dict)
    return dict
    fh.close()








ret_dic = Read_file("/home/srm/srinivas/Practice/VLSI_tasks/new/tt.txt")


for k,v in ret_dic.items():
    print (k,v,"\n")
