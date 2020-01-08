#!/usr/bin/python3
import os
import re 
ff = os.system('ifconfig >aa.txt')
#print(ff)

fobj = open("aa.txt","r")

lines = fobj.readlines()

for i in lines:
		line = i.strip();
		#print(line)
		#fm = re.search(r'175.[0-255].[0-255]',line)
		obj = re.search(r'(172.\d+.\d+.\d+)',line)
		if obj:	
					fi = obj.group()
					print(fi)
	




