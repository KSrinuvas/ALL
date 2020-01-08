#!/usr/bin/python3

class Hello():
	def __init__(self,name):
		self.name = name
	
	def ADD(self,a,b):
		sum = a+b
		return sum

	def Update(self,pp):
		self.name = pp

	def Print(self):
		print (self.name)

aa = Hello("srinu")
aa.Print()
print (aa.name)

print (aa.ADD(10,20))

aa.Update("vas")

print ("update the name is ",aa.name )

aa.Print()











