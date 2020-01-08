#!/usr/bin/python3

#Python | List value merge in dictionary

test_dict1 = {'Gfg' : [1, 2, 3], 'for' : [2, 4], 'CS' : [7, 8]} 
test_dict2 = {'Gfg' : [10, 11], 'for' : [5], 'CS' : [0, 18]} 

res = {key: val + test_dict2[key] for key,val in test_dict1.items()}

print (res)


dd = {}
for key,val in test_dict1.items():
	dd[key] = val + test_dict2[key]

print (dd)


