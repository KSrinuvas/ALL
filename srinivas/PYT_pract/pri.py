#!/usr/bin/python3
import os
import re

k = "*"
p = 9
for i in range(1,20):
    if (i%2 !=0):
        print ( p * " ","*" * i) 
        p -=1


#os.system('ls -l')

#os.system('ifconfig > file.txt')



fobj = open("file.txt")


for line in fobj.readlines():
    line = line.strip()
    aa = re.search(r'(\d+\.\d+\.\d+\.\d+)',line)
    
    if aa is not None:
        a =  aa.group()
        if re.match(r'(\d+\.\d+\.\d+\.\d+)',a):
            print ("yes")
    

fobj.close()
    


