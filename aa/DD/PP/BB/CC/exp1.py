#!/usr/bin/python3

class AA():
	## class attribute 
	main_122 = "HELLO"

	## inistance attributes 

	def __init__(self,name,age,salary):
		self.name = name
		self.age = age
		self.salary = salary



bb = AA("ss",20,"25k")


print ("bb.__dict__:", bb.__dict__ )

print ("bb.__doc__", bb.__doc__ )


print ("bb.__module__", bb.__module__ )





print (bb.main_122)


print (bb.__class__.


