#!/usr/bin/python3


list1 = [1,2,3,4,5,1,2,3,4,5]




re_list = list(set([i for i in list1
					if list1.count(i) > 1]))
print (re_list)
