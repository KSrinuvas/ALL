#!/usr/bin/python3

import re

def Read_file(file):
    fh = open(file,"r")
    fw = open("ovv_write.tct","w")
    for line in fh.readlines():
        line = line.strip()
        if re.match(r'^\s*$',line): continue
       #print (line)
        aa = re.search(r'[aeiou]',line,re.I)
        if aa:
           #print (aa.group())
            fw.write(aa.group())
            fw.write("\n")
    fh.close()
    fw.close()


    


if __name__ == "__main__":
    Read_file("ovv.txt")

