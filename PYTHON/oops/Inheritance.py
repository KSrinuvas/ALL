#!/usr/bin/python3

# Use of Inheritance in Python



## parrent class or base class 

class Pets:
	def __init__(self):
		print ("okkk")
	def cc1(self):
		print ("parrent cc1 fun")
	def dd1(self):
		print ("parrent dd1 fun")



## child class or derived class

class Dog(Pets):
	def __inti__(self):
		super().__init__(self)
		print ("start child")
	def cc1(self):
		print ("child cc1 fun")
	def ss1(self):
		print ("child ss1 fun")



Chi = Dog();

Chi.cc1()
Chi.dd1()
Chi.ss1()
