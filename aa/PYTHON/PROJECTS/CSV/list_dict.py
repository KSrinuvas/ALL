#!/usr/bin/python3

import csv



main_list = []
with open('/home/srm/Readfiles/Emp.csv') as f:
		for line in f:
				line = line.strip()
#				print(line)
				list = line.split(',')
				main_list.append(list)

#print (main_list)


ll = main_list.pop(0)

print (main_list)
#print(ll)			





	
