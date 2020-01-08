#!/usr/bin/python3
## primy number
no = int(input("enter a number: "))
 
for i in range(2, no):
	if no % i  == 0:
		print("not prime number")
		break
else:
	print("prime number")
 




num = int(input("Enter the no: "))
k = 2
for i in range(k,num):
			if num%i==0:
					print("not a prime no")
					break
else:
		print("primy no")

