#!/usr/bin/python3
import re

line = "Cats are smarter than dogs";

print (line)



aa = re.search(r'^(\w+)',line)

if aa:
     print (aa.group())



phone = "2004-959-559 # This is Phone Number"

nn = re.sub(r'#.*$', "",phone)


print (nn)

num = re.sub(r'\D', "", nn)



aa = re.search(r'cats\s+ARE',line, re.I)

if aa:
    print (aa.group())


print (num)
