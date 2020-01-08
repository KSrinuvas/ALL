#!/usr/bin/python3

import re

class Employee:
#  'Common base class for all employees'
   empCount = 0

   def __init__(self, name, salary):
      self.name = name
      self.salary = salary
      Employee.empCount += 1
   
   def displayCount(self):
     print ("Total Employee %d" % Employee.empCount)

   def displayEmployee(self):
      print ("Name : ", self.name,  ", Salary: ", self.salary)





aa = [["nn",10],["yy",20],["oo",30],["hh",80]]




OP = 0
for i in range(0,len(aa)):
	#print (aa[i][0],aa[i][1])
	OP = Employee(aa[i][0],aa[i][1])
	#print (OP.name,OP.salary)
	OP.displayEmployee()
	SS = OP.__dict__
OP.displayCount()

print (SS)


'''
	aa = Employee(aa[i][0],aa[i][1])
	aa.displayCount()
	aa.displayEmployee()		
'''



