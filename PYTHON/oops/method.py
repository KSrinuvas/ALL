#!/usr/bin/python3

#Creating Methods in Python

class Pets:

	 # instance attributes
	def __init__(self,name,age):
		self.name = name;
		self.age = age;

	### instance method
	
	def Sing(self,song):
		return "{} sings {}".format(self.name,song)
	def dance(self):
		return "{} is now dancing".format(self.name)


obj = Pets("Arjun",10);

print (obj.Sing("happy."))

print (obj.dance())

