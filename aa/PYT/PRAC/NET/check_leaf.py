#!/usr/bin/python3
import re

print ("below enter the year it will check the year is leap or not")
aa = int(input("Enter the year :"))

bb = 4

cc = aa/bb
cc = str(cc)

if re.search(r'\d+\.0',cc):
    print ("{} is leap year".format(aa))
else:
    print ("{} is not leap year".format(aa))

