#!/usr/bin/python3


##------------------------------------------------
## Description : Read the file and build the dict
##------------------------------------------------

import re


def Read_file(file):
    fh = open(file,"r")
    dict = {}
    key = ''
    val= ''
    str = ''
    for line in fh.readlines():
        line = line.strip()
        #print (line)
        if re.match(r'\w+\=.?\w.+',line):
            #print (line)
            aa = re.search(r'(\w+)\=(.?\w.+)',line)
            if aa:
                key = aa.group(1)
                val = aa.group(2)
                dict[key] = val
        else:
           # print (line)
            str +=line
    print (str)
    if 'description' in dict:    
        print ("yes")
        dict['description'] += str
    print (dict)

    



















Read_file("/home/srm/srinivas/Practice/VLSI_tasks/jj.txt")


