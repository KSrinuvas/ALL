#!/usr/bin/python3

'''
a = [1,5,6,8,10,4,2,4,3]
print("original list is :{}".format(a))
ll = []
for x in a:
		for y in a:
				if x+y==8:
						a.remove(x)
						ll.extend([[x,y]])
print("Pairs of equal to 8 with dublicate values :{}".format(ll))


'''


a = [1,5,8,10,4,2,4,3,4,4,6,4,4,4,2,2,10,10]

for m in a:
		for n in a:
				if m+n == 8:
						print(m,n)
					#	a.remove(m)
								
										


