#!/usr/bin/python3

## varible length argument

## 

## list
def aa(*args):
			for i in args:
					print(i)

## call function 
list = [1,2,3,4,5]
aa(*list)


##dict

def hh(**kwargs):
			for k,v in kwargs.items():
						print(k,"==>",v)
##call function 
dict = {'a':1,'b':2}

hh(**dict)



