#!/usr/bin/python3

class AA:
	def __init__(self):
		self.__val = 500

	def Print(self):
		print (self.__val)

	def Update(self,price):
		self.__val = price
		print (self.__val)



dd = AA()

dd.__val = 700
print (dd.__val)

dd.Print()


dd.Update(1000)

