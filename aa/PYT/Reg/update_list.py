#!/usr/bin/python3

#Python | Updating value list in dictionary

dd = {'a' : [1,2,3],'b' : [1,3,5]}

print (dd)

dd['a'] = [x * 2 for x in dd['a']]

print (dd)

del dd['a'][-1]




print (dd)
