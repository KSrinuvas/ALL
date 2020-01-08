#!/usr/bin/python3
import re
f = open("pe.text","r")
str = " "
lines=f.readlines()
for i in lines:
		line = i.strip()
		obj = re.search(r'Mac.*',line)
		if obj:
					str = obj.group()
					index=lines.index(i)
					print(lines[index-1])
					pass
		if str==line:
					#print("yes")
					break
		print(line)		
			
#print(str)
'''
ff = open("pe.text","r")
str = " "
for k in ff:

			print(k)

'''

#B1 = int(input("Enter the before lines matching string line : "))
#A1 = int(input("Enter the After lines matching string line : "))
#C1 = int(input("Enter the center lines matching string line : "))
