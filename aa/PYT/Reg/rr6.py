#!/usr/bin/python3

test_list = [(3, 4), (4, 5), (3, 4),  
             (3, 4), (4, 5), (6, 7)] 





res = list(set([ele for ele in test_list 
				if test_list.count(ele) > 1]))

print (res)



