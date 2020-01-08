#!/usr/bin/python3

l1 = range(1,100)

#l1 = eval(input("Enter the list of elements to get primy no's list: "))
l2 = []
for i in l1:
		for k in range(2,i):
					if i%k==0:
							break
					else:
							l2.append(i)
#print(l2)
l2 = list( dict.fromkeys(l2) )
l2.sort()
print(l2)
print("length of the list is :",len(l2))							
