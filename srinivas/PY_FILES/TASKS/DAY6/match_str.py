#!/usr/bin/python3
import re

f = open("rr.txt",'r')

lines = f.readlines();

A1 = int(input("Enter the After lines matching string line : "))
B1 = int(input("Enter the before lines matching string line : "))
for i in lines:
			line = i.strip()
		#	print(line)	
			obj = re.search(r'srinu',line)
			if obj:
						a = obj.group()
						index=lines.index(i)
						if A1 > 0:
								aa = index+1+A1
								for v in lines[index+1:aa]:
											ll = v.strip()
											print(ll)

for p in lines:
			line = p.strip()
		#	print(line)	
			obj2 = re.search(r'srinu',line)
			if obj2:
						index2=lines.index(p)
						if B1 > 0:
								bb = index-B1
								for m in lines[bb:index]:
											pp = m.strip()
											print(pp)


for o in lines:
			line1 = o.strip()
			obj1 = re.search(r'srinu',line1)
			if obj1:
						index1 =lines.index(o)
						if A1 == B1:
									gg = index1+1+A1
									hh = index1-B1
									for n in lines[hh:gg]:
												kk = n.strip()
												print(kk)





#B1 = int(input("Enter the before lines matching string line : "))
#A1 = int(input("Enter the After lines matching string line : "))
#C1 = int(input("Enter the center lines matching string line : "))

