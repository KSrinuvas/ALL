#!/usr/bin/python3

from collections import defaultdict
#dates_dict = defaultdict(list)

#defult dict

dd =  defaultdict(list)


ff = {}
ff['list_valu'] = []

for i in range(1,20):
	print (i)
	dd['aa'].append(i)
	ff['list_valu'].append(i)


print (ff)
print (dict(dd))




dic1 = {}
dic1['list'] = []
dic1['dic'] = {}

dic1['list'] = [1,2,3,4]
dic1['dic'] = {'a':500,'b':200}
dic1['a'] = 100
dic1['b'] = 200

print (dic1);




dic1['list'].append(5) 

dic1['list'].insert(0,"srinu")

dic1['list'].pop(0)


del dic1['list']


print (dic1);











