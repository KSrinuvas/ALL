#!/usr/bin/python3
import functools 
import operator
'''
bb = []
def op(ff,*aa):
				a = functools.reduce(operator.ff,aa)
				print(a)

## to enter the stdinput arguments from required from keybord
hh = (str(input("enter the operators like add,sub,mul,div: ")))
pp = (str(input("enter the values: ")))
bb = pp.split(" ")
op(*bb)

list = [1,2,3,4,5,6]
a = functools.reduce(operator.mul,list)

#print(a)

def aaa(*argv):
			a = functools.reduce(operator.sub,argv)
			print(a)

aaa(*list)

'''

def aaa(ff,*li):
			if ff == 'add':
					bb = functools.reduce(operator.add,li)
					print(bb)
			elif ff== 'sub':
					bb = functools.reduce(operator.sub,li)
					print(bb)
			elif ff== 'mul':
					bb = functools.reduce(operator.mul,li)
					print(bb)
			elif ff== 'floordiv':
					bb = functools.reduce(operator.floordiv,li)
					print(bb)

hh = (str(input("Enter the operators like add,sub,mul,floordiv: ")))
pp = (str(input("Enter the values separeted value with space: ")))
bb = pp.split(" ")
cc = []
for i in bb:
		i = int(i)
		cc.append(i)
aaa(hh,*cc)




