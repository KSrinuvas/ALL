#!/usr/bin/python3

import re

## tell and seek 



def Read_file(file):
    fh = open(file,"r")
    for line in fh.readlines():
        line = line.strip()
        if re.match(r'^\s*$',line):
            continue
        #print (line)
        
        aa = re.search(r'(\d+\.\d+\.\d+\.\d+)',line)
         
        if aa:
            print (aa.group())
            
 
        
        bb = re.search(r'\w+\@\w+\.com',line)
  
        if bb:
            print (bb.group())        
    fh.seek(0)
    print (fh.tell())
    fh.close()   




if __name__ == "__main__":
    Read_file('ip.txt')

