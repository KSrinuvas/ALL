#!/usr/bin/python3


## list comparancive is the singel line loop
list = [1,2,3,4,5,6]
dd = [i for i in list if i%2==0]
print(dd)


## dict comparancive 
dict = {"a":1,"b":2}
gg = [k for k,v in dict.items()]
print(gg)
gg = [v for k,v in dict.items()]
print(gg)

