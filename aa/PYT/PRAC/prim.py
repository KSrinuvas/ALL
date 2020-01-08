#!/usr/bin/python3
print ("To check the no is prim or not")
no = int(input("Enter the no : "))

a = 0
for i in range(2,no):
    print (i)
    if (no%i==0):
        a = 1
        break
    print (a)

