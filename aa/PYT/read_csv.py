#!/usr/bin/python3
import re
## read csv file and build the dict

def Read_file(file):
    fobj = open(file,"r");
    
    list1 = []
    
    hh = fobj.readline()
    hh = hh.strip()
    head = hh.split(',')
    data = fobj.readlines()
    for line in data:
        dic = {}
        line = line.strip()
        #if re.match(r'^\s*$', line):
        if re.match(r'^$', line):
            continue
        
        ll = line.split(',')
     
        for i in range(len(head)):
            dic[head[i]] = ll[i]
        list1.append(dic)
    
    fobj.close()
    return list1 
    print (list1) 




pp = Read_file("GG.csv")
print (pp)




