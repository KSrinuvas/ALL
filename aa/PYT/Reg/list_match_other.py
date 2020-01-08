#!/usr/bin/python3

#Python | Indices list of matching element from other list


list1 = [5, 7, 8, 9, 10, 11] 
list2 = [8, 10, 11] 

rrr = []

for i in range(len(list1)):
	if list2.count(list1[i]) > 0:
		rrr.append(i)

print (rrr)

res = [] 
i = 0
while (i < len(list1)): 
    if (list2.count(list1[i]) > 0): 
        res.append(i) 
    i += 1

print (res)

