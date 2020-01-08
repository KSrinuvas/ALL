#!/usr/bin/python3

num = int(input("Enter the value to check perfect or not: "))

'''
def Fact(no):
    i = 1
    fact = 1
    while (i <= no):
        fact *=i
        i +=1
    #print (fact)
    return fact

ff = Fact(num)   
#print (ff)

'''

sum = 0
for i in range(1,num):
    if (num%i==0):
#       print (i)
        sum +=i
if (sum == num):
    print ("{} value is perfect no. ".format(num))
else:
    print ("{} value is not perfect no. ".format(num))


