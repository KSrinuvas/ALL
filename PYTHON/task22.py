#!/usr/bin/python3


'''
Write a program which can map() and filter() to make a list whose elements are square of even number in [1,2,3,4,5,6,7,8,9,10].
'''


li = [1,2,3,4,5,6,7,8,9,10]

aa = list(filter(lambda x: x%2==0,li))

print ("Even no : ",aa)

sq_ev = list(map(lambda x:x**2,aa))

print (sq_ev)
