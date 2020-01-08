#!/usr/bin/python3
import re


## i want to chane the below if address 192 to 164

ip = "this is my ip address 192.168.32.01"


print (ip)

ip = re.sub(r'(\d+)(\.\d+\.\d+\.\d+)', r"164\g<2>", ip)

print (ip)



fh = open('ch.txt','w')

fh.write(ip)

fh.close()

