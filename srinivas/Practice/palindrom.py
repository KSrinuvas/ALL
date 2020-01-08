#!/usr/bin/python3



nn = 121.121 

if (type(nn) == int):
    aa = str(nn)
elif (type(nn) == str):
    aa = nn
elif (type(nn) == float):
    aa = str(nn)


print (type(aa))




l1 = len(aa)-1
print (l1)
ss = ''
while (l1 >= 0):
    ss +=aa[l1]
    l1 -=1
print (ss)
if (aa == ss):
    print ("it is a palindrom")
else:
    print ("it is not palindrom")
 
