#!/usr/bin/python3


##1 

class Pet():
	
	## class attributes 
	ss = "hello";

	def __init__(self):
		pass
	def ADD(A,B):
		sum = A+B
		return sum

##2 

class PP(Pet):
	def __init__(self,name,age):
		#super().__init__();
		self.name = name
		self.age = age
	def DD(self,cc):
		print (cc)	
		return cc
	
ff = PP("srinu",22)


print(ff.ss)

gg =  ff.DD(100)
print (gg)

res = PP.ADD(100,120)
print ("sum of two no {}".format(res))

print (ff.name)
print (ff.age)
