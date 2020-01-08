#!/usr/bin/python3

class First:
	def __init__(self,name):
		self.name = name
		print (name)
	
	def ss(self,k1):
		print (k1)
	
	def yy(self,cc,nn):
		print (cc)
	def zz(self):
		print (self.name)
class Second(First):
	def __init__(self,name):
		self.name = name
		super().__init__
	def yy(self,dd,name):
		print (dd,name)

	
#obj = First("hello")

#obj.ss(10)


OOA = Second("hello")

OOA.yy("child","SS")
OOA.ss("Parent")


