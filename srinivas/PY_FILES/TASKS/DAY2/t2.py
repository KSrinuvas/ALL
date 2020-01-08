#!/usr/bin/python
'''
str = "my name is srinu"
list = str.split()
#print(list)
ll = []
a = " "
for i in list:
 #   print(i)
    a = i[::-1]
    print(a)
    ll.append(a)
print(ll)

str1 = " ".join(ll)

print(str1)

'''






str = input(str("Enter the String: "))
#str = "my name is srinu"
list = str.split()
ll = []
a = " "
for i in list:
    a = i[::-1]
    ll.append(a)
str1 = " ".join(ll)
print("Original String is the          :{}".format(str))
print("Rverse of words of a string     :{}".format(str1))
