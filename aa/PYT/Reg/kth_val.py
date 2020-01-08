#!/usr/bin/python3

test_list = [(3, 1, 5,100), (1, 3, 6,200), (2, 5, 7,300), 
                        (5, 2, 8,400), (6, 3, 0,500)] 
  
# printing original list 
print("The original list is : " + str(test_list)) 
  
# initialize ele  
ele = 3
  
# initialize K  
K = 1 
  
# Indices of Kth element value 
# Using loop 
# using y for K = 1  
res = [] 
count = 0
for x, y, z, zz in test_list: 
    if y == ele: 
        res.append(count) 
    count = count + 1


print (res)

print (test_list[1][1])
print (test_list[4][1])
print (count)

dd  = [a for a, b in enumerate(test_list) if b[K] == ele]

print (dd)


for a, b in enumerate(test_list):
	if b[K] == ele:
		print (a)
