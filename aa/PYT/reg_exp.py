#!/usr/bin/python3

import re
## search


ip = "this is my ip address 123.12.45.01"



## search 

aa = re.search("(\d.+)",ip)

if aa:
    print (aa.group())
    print (aa.group(1))




## match


bb = re.match("this\s+\w.+\s+(\d+\.\d+\.\d+\.\d+)$",ip)

if bb is not None:
    print (bb.group(1))



print('ip = %s' %(ip))


ss = "Spooe"

re.sub('[aeu]', 'n', re.sub('[abc]', 'o', 'ss'))

print ('ss = %s' %(ss))


x = lambda a, b : a * b
print(x(5, 6))





## 
