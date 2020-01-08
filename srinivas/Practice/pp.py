#!/usr/bin/python3
import sys
aa = int(sys.argv[1])

dict = {}
for i in range(1,aa+1):
    dict[i] = i * i
    

print (dict)

