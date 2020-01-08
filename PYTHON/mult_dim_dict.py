#!/usr/bin/python3

## on dimentional dict


dict = {}

dict['a'] = 10
dict['b'] = 20



dict['c'] = 30

for k,v in dict.items():
	print (k,v)

for k in dict.keys():
	print (k)

for v in dict.values():
	print (v)

dict['kk'] = []

for i in range(1,10):
	dict['kk'].append(i)

print (dict)



dict1 = {}
dict1['dd'] = {}


dict1['dd'] = dict

print (dict1)




















