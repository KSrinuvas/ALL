#!/usr/bin/python3
test_dict = {'gfg' : [1, 5, 6], 'is' : 2, 'best' : 3} 

print (test_dict)


test_dict['gfg'] =  list(map(lambda x : x * 2 , test_dict['gfg']))


print (test_dict)


aa = [1,2,3,4]

print (aa)
aa =  list(map(lambda x : x * 2 , aa))

print (aa)
