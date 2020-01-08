#!/usr/bin/python3

## Data Encapsulation in Python

class AA:
	def __init__(self):
		self.__max = 900
	
	def sell(self,price):
		self.max = price
		print (self.__max)

	def ff(self,cost):
		self.max = cost
		print (self.__max)

cc = AA();

cc.sell(100)



cc.__max = 1000



print (cc.__max)
cc.ff(500)
