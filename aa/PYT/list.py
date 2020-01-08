#!/usr/bin/python3

list = ['ss','yy','pp','qq']
print (list)


## 




if 'dd' not in list:
    print ("dd is not in the list!")
else:
    print ("dd is in the list!")


if 'pp' in list:
    print ("pp is in list!")
else:
    print ("pp is not in the list!")





## dict 


dict = {'a':30,'b':20,'c':30}




dd = dict.get("b","b key is not exists in dict")


print (dd)



ll = dict.keys()

print (ll)



for i in ll:
    print (i)
    pp = dict.get(i,"i key is not there")
    print ("key is {} and value is {} "
       .format(i,pp)) 






if "a" in dict:
    print ("yes")
else:
    print ("no")










ss = 10



if (ss is None):
    print ("gf is none")
else:
    print ("ss is not none")





