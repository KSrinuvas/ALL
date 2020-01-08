#!/usr/bin/python3
import re
fi = open("aa.txt","r")

lines = fi.readlines()

for i in lines:
		line = i.strip()
	#	fobj = re.search(r'(addr\:)(\d+\.\d+\.\d+\.\d+)',line)
		fobj = re.search(r'(addr\:)([0-225]+\.[0-255]+\.[0-255]+\.[0-255]+)',line)
		if fobj:
						print(fobj.group())
