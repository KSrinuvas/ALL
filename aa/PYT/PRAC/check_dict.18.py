#!/usr/bin/python3

dict = {'a':1,'b':2,'c':3,'d':4}

#dict['z'] = None

if 'a' in dict:
    print ('a in dict')
else:
    print ('a not in dict')




ret = dict.get('b','b key is not there')


print (ret)

r1 = dict.get('z','z key is not there in dict')

print (r1)



if 'z' in dict:
    print ("z in dict")
else:
    print ("z is not in dict")
