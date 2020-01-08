#!/usr/bin/python3
import re
## count the no of same lines in a file 




list = []
def Read_file(file):
    fh = open(file,'r')
    dict = {}
    for line in fh.readlines():
        line = line.strip()
        if re.match(r'^\s*$',line):
            continue
        line = ' '.join(line.split(' '))
        try:
           #dict[line] +=1
            dict[line] = dict[line] + 1
        except:
            dict[line] = 1
    Dup_line(dict)
    return dict;
    fh.close()
    
   
def Dup_line(dd):
    keys = dd.keys()
    count = 0
    for i in keys:
        if (dd[i] > 1):
            count +=1
    print (count)

    


if __name__ == "__main__":
    aa =  Read_file("file.txt")
    print (aa)
    bb = Read_file("rr.txt")
    print (bb)
