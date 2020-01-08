#!/usr/bin/python3
# Python3 code to demonstrate  
# False indices 
# using enumerate() + list comprehension 
  
# initializing list  
test_list = [True, False, True, False, True, True, False] 
  
# printing original list  
print ("The original list is : " + str(test_list)) 
  
# using enumerate() + list comprehension 
# False indices 
res = [i for i, val in enumerate(test_list) if not val] 
  
# printing result 
print ("The list indices having False values are : " + str(res)) 




for i, val in enumerate(test_list):
	#print (i, val)
	if not val:
		print (i)


for i, vv in enumerate(test_list):
	if vv:
		print (vv)
