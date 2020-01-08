#!/usr/bin/python
a = [[1,2,3,4,5],{"A":6},(7,8,9)]
c = []
for i in a:
		if type(i) == list:
				c.append(i)
		elif type(i) == dict:
			  c.append(i.values())
		elif type(i) == tuple:
				c.append(i)
for l in c:
		for g in l:
			 print(g)

'''


### dynamic
dynamic = []
x=[1,2,3,4,5]
y={"A":6} 
z=(7,8,9)
dynamic.extend([x,y,z])
print(dynamic)


'''
