#!/usr/bin/python3

## raise exception

aa = "aa.txt";

try:
	fh = open(aa,"r")
	fw = open("bb.txt","w")
	for line in fh.readlines():
		line = line.strip()
		print (line)
		fw.write(line)
		fw.write("\n")	
	fh.close()
	fw.close()
except:
	raise IOError ("file error")







	
	
	

