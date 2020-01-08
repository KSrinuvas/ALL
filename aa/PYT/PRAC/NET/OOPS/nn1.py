#!/usr/bin/python3

'''
Define a class named Shape and its subclass Square. The Square class has an init function which takes a length as 
argument. Both classes have a area function which can print the area of the shape where Shape's area is 0 by default.
'''

class Shape(object):
	
	def __init__(self):
		pass
	def area(self):
		return 0
	def ok1(self,jj):
		print ("ok")	


class Square(Shape):
	def __init__(self,length):
		#Shape.__init__(self);
		super().__init__();
		self.length =  length
		
	def area(self):
		return self.length * self.length
	
	def ok(self):
		print ("not ok")

	
aa = Square(10)

gg = aa.area()

print (gg)

aa.ok1(10)

