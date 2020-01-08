#!/usr/bin/python3

list = [1,2,3,4,5]

list.insert(0,100)


list.extend([100,200,300,4400])


print (list)
last_ele = list.pop()

first_ele = list.pop(0)

print ("first ele in a list : ", first_ele)


print ("last elem in a list :", last_ele)


list.append(4100)


for i in sorted(list):
    print (i)



ll = list[::-1]
print (ll)


for i in reversed(list):
    print (i)


