#!/usr/bin/python3
import sys

sys.argv.pop(0)
list = sys.argv
print (list)

dict = {}
for i in sys.argv:
    i = int(i)
    print (i)
    dict[i] = i *i

print (dict)


   

