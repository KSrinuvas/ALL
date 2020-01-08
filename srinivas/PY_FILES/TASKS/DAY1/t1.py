#!/usr/bin/python
a = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
even = [];odd = [];f1=[];l1=[];
for i in a:
			f1.append(i[0])
			l1.append(i[-1])
print ("first element's in list:{}".format(f1))
print ("last element's in list: {}".format(l1))

for i in a:
		for j in i:
				if j%2==0:
						even.append(j)
				else:
						odd.append(j)
print("Even_no's :{}".format(even))
print("odd_no's :{}".format(odd))

## build the list in dynamic way

dynamic_list1  = []
a = [1,2,3,4]
b = [5,6,7,8]
c = [9,10,11,12]
dynamic_list1.extend([a,b,c]) 
print("To Build The List Dynamic ==> {}".format(dynamic_list1))




