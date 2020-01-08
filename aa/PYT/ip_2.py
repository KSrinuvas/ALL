#!/usr/bin/python3
import re

## match the ip addres in file 


def Read_file(file):
    pass  
    fobj = open(file,"r")
    ip = 0
    ga = 0
    for line in fobj.readlines():
        line = line.strip()
        if re.match(r'^\s*$',line):
            continue
#       print (line)
        
        mm = re.search(r'(\w+\@\w+.com)\s+\w.+\s+(\d.+)',line)
        if mm is not None:
            print (mm.group(1))
            print (mm.group(2))
            ip +=1
            ga +=1
    print ("no of ip in a file {} and no of mails in a file {}".format(ip,ga))


Read_file("file.txt")    

 
