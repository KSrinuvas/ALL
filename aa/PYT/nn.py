#!/usr/bin/python3
import re
ss = "this,is,the,    ,python,     ,sample,              ,program"




ll = ss.split(',')

print(ll)

#print (ss)



for i in ll:
    if re.search(r'^\s+',i):
   #    print (i)
        ll.remove(i)





print (ll)

