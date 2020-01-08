#!/usr/bin/python3
# How to iterate through a Nested dictionary?

people = {1: {'Name': 'John', 'Age': '27', 'Sex': 'Male'},
          2: {'Name': 'Marie', 'Age': '22', 'Sex': 'Female'}}


for k,v in people.items():
	print ("id is ",k)
	for k1,v1 in v.items():
		print (k1,v1)
	print ("\n")
