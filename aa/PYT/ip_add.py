#!/usr/bin/python3
import re


## Math the ip address in a string 


str = "this his my ip address 162.183.12.01"


#print (str)



aa = re.search(r'(\d.+)',str)

print (aa.group())


