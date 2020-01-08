#!/usr/bin/python3
import re
#Users of XT_ISS_XTMP:  (Total of 10 licenses issued;  Total of 0 licenses in use)




aa = "/home/srm/Downloads/lic_log";


def Read_file(bb):
	dict = {}
	dict['user'] = []
	dict_main = {}
	ab = None;
	fh = open(bb)
	for line in fh.readlines():
		line = line.strip()
		#print (line)
		
		if re.search(r'Users\s+of\s+(\w+)\:\s+\(Total\s+of\s+(\d+)\s+licenses\s+issued\;\s+Total\s+of\s+(\d+)\s+licenses\s+in\s+use',line):
			aa = re.search(r'Users\s+of\s+(\w+)\:\s+\(Total\s+of\s+(\d+)\s+licenses\s+issued\;\s+Total\s+of\s+(\d+)\s+licenses\s+in\s+use',line);
	
			if aa:
				ab = aa.group(1)
			#	print (aa.group(2))
			#	print (aa.group(3))
				dict['issued_lic'] = aa.group(2)
				dict['used_lic'] = aa.group(3)
				

		
		if re.search(r'(\w+)\s+(\w.+)\s+(\w.+)\s+\(\w.+\)\s+\(\w.+\/\d+\s+\d+\)\,\s+\w+\s+\w+\s+\d+\/\d+\s+\d+',line):	
			cd =  re.search(r'(\w+)\s+(\w.+)\s+(\w.+)\s+\(\w.+\)\s+\(\w.+\/\d+\s+\d+\)\,\s+\w+\s+\w+\s+\d+\/\d+\s+\d+',line);	
			if cd:
				pass
			#   print (cd.group(1))
			#	dict['user'].append(cd.group(1))
				print (ab)
		#print (dict_main) 	
			print (dict)

Read_file(aa)



