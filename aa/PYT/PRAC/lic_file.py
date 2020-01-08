#!/usr/bin/python3
import re
import argparse
import json


## Users of znconfirm:  (Total of 60 licenses issued;  Total of 0 licenses in use) 

## shecht thorondor.seamicro.local localhost:2817438_1 (v2010.11) (licsrv05.amd.com/27003 223905), start Tue 10/9 15 

#cheng sv4h102 13359.sv4h102:0 (v2011.11) (licsrv05.amd.com/27003 100246), start Mon 10/8 11:20



## licence file 

def Read_file(file):
    fh = open(file,"r")
    dict = {}
    kk = ''
    val = None 
    issued = ''
    used = ''
    user_list = [] 
    fw = open("tool.json","w");
    for line in fh.readlines():
        line = line.strip()
        
        if re.match(r'Users of \w+:  \(Total of \d+ licenses issued;  Total of \d+ licenses in use\)',line):
            #print (line)     
            ab = re.search(r'\w+\s+\w+\s+(\w+)\:\s+\(\w+\s+\w+\s+(\d+)\s+\w+\s+\w+\;\s+\w+\s+\w+\s+(\d+)\s+\w+\s+\w+\s+\w+\)',line)
            if ab is not None:
                #print (ab.group(1))
                d1 = {}
                dict[kk] = []
                kk = ab.group(1)
                issued = ab.group(2) 
                used = ab.group(3)
                d1['issued_total_licences'] = issued
                d1['used_total_licences'] = used
            dict[kk] = d1    
        #elif re.search(r'shecht thorondor.seamicro.local localhost:2817438_1 (v2010.11) (licsrv05.amd.com/27003 223905), start Tue 10/9 15
        #elif re.search(r'.seamicro.local localhost:2817438_1 (v2010.11) (licsrv05.amd.com/27003 223905), start Tue 10/9 15
        elif re.search(r'(\w+)\s+(\w.+)\s+(\w.+)\s+\(\w.+\)\s+\(\w.+\/\d+\s+\d+\)\,\s+\w+\s+\w+\s+\d+\/\d+\s+\d+',line):
            cd =  re.search(r'(\w+)\s+(\w.+)\s+(\w.+)\s+\(\w.+\)\s+\(\w.+\/\d+\s+\d+\)\,\s+\w+\s+\w+\s+\d+\/\d+\s+\d+',line);
            if cd is not None:
                val = cd.group(1)
                #user_list.append(cd.group(1))
                #dict[kk]['user_licensesr'] = cd.group(1)
                dict[kk].append(cd.group(1))
                 
                
            #print (line)
                user_list.append(val)
               #print (kk,val)
    #dict[kk]['user_licensesr'] = user_list
    	
    json1 = json.dumps(dict)
    fw.write(json1)
    #print (json1)
    
    fh.close()
                

 
                #print (ab.group(3))
                #print (kk)
       

    return dict  

    
    fh.close()




new = Read_file("/home/srm/Downloads/lic_log")



#print (new)


tool_name = input("please enter the tool name: ")


for k,v in new.items():
    #print (v)
    if (k == tool_name):
        for k1,v1 in v.items():
            print (k1,v1)
    
