#!/usr/bin/python3

import re 

str = "this is my ip address 172.22.35.16"

print (str)



tr = re.sub(r"(\d+)\.(\d+)\.(\d+)\.(\d+)$", r"\2.\1.\4.\3", str)

print(tr)

aa = re.sub(r'(\d+)(\.\d+\.\d+\.\d+)$', "183\g<2>", str)
#print (aa)




