#!/usr/bin/python3
import sys
import re
import os


### rec fun 



def Rec(path):
    dict = {}
    a,b,c = 0,0,0
    for file_dir in os.listdir(path):
        if re.match(r'^\.\.?',file_dir): continue
        child_path = os.path.join(path,file_dir)
        if os.path.isdir(child_path):
            Rec(child_path)
        else:
           ##print (child_path)            
            abc = re.search(r'.*.pl',child_path)
            if abc:
                #print (abc.group())
                 a +=1
            ab = re.search(r'.*.py',child_path)
            if ab:
                #print (ab.group())
                b +=1
            bc = re.search(r'.*.tcl',child_path)
            if bc:
                #print (bc.group())
                c +=1
   

Rec(sys.argv[1])







