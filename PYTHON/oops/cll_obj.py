#!/usr/bin/python3

class Parrot:
	## class attributes 
	spical = "Brid"
	
	## instance attributes 
	def __init__(self,name,age):
		self.name = name
		self.age = age
	

	def Updateage(self,age):
		self.age = age;

	def Updatename(self):
		pass











if __name__ == "__main__":

## instantiate the Parrot class

bb = Parrot("ss",10);
bb.Updateage(100);

print (bb.name)

print (bb.age)


bb.age = 200;

print (bb.age)
bb.name = "Srinu";

bb.Updatename()

print (bb.name)

print ("bb is a {}".format(bb.__class__.spical))

bb.__class__.spical = "CAT";

print ("bb is a {}".format(bb.__class__.spical))







## 

