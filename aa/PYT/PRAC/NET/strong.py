#!/usr/bin/python3

aa = (input("Enter the no if will check strong or not : "))

#print (aa)
def Strong(no):
    fact = 1
    i = 1
    while (i <= int(no)):
        fact *=i
        i +=1
    return fact
  
cc = 0
for i in range(len(aa)):
#   print (aa[i])
    pass
    dd = Strong(aa[i])
#   print (dd)
    cc += dd
#   print (cc)

if cc == int(aa):
    print ("{} value is strong number.".format(cc))
else:
    print ("{} value is not strong number.".format(cc))
     
  


