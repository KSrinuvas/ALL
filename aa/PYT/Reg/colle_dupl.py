#!/usr/bin/python3

ll = [1,2,3,1,2,3,4,5,6]



print (ll)



res = list(set([ele for ele in ll 
				if ll.count(ele) > 1]))

print (res)
