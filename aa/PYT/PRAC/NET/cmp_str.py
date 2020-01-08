#!/usr/bin/python3
import re
a = "hello ok good"
b = "hhhoo"
print (a)
print (b)

c =list(set(a)&set(b))

print (c)
 

aa = {1,2,3,4,5,4,5,6,4,5,8}

print (aa)

bb = set(a)

for i in bb:
    if re.match(r'^\s+',i): continue
    print (i)




dd = list(set(a)&set(b))

print (dd)






