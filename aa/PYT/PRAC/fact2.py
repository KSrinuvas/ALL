#!/usr/bin/python3

aa = int(input("Enter the factorial of x num : "))


## 

fac = 1

for i in range(1,aa+1):
    fac *= i

print ("Factorial of {} is {}".format(aa,fac))


## while 

j = 1
fact1 = 1
while (j <= aa):
    fact1 *= j
    j +=1


print ("Factorial of {} is {}".format(aa,fact1))





