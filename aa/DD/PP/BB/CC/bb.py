#!/usr/bin/python3

## inheritance 

class Parent():
	def __init__(self,name):
		self.name = name
		pass
	def Cat(self,name):
		print (name)

	def Dog(self,name):
		print (name)


class Child(Parent):
	def __init__(self,name):
		self.name = name 
	
	def Parrot(self,name):
		print ( name)

	def Update(self,nn):
		self.name = nn

bb = Child("FGD")

print(bb.name)

bb.Dog("jully")

bb.Cat("browny")


bb.Parrot("chitty")


bb.Update("NEW_FGD")

print ("Updated the name is : ",bb.name)




'''





aa = Parent("pets")

print (aa.name)


aa.Cat("   Caty")

aa.Cat("   Dabar")

	

'''	
