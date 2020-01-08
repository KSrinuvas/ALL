#!/usr/bin/python3
import re
ip = '172.25.34.1'
a =re.findall(r'[0-255].+',ip)

print(a)


