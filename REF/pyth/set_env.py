#!/usr/bin/python3
import os
##           How to Set and Get Environment Variables in Python         ## 
##
# Set environment variables
os.environ['PERLDATA'] = 'username'
os.environ['PYTHONDATA'] = 'secret'
# Get environment variables
USER = os.getenv('PERLDATA')
PASSWORD = os.environ.get('PYTHONDATA')

print (USER)
print (PASSWORD)

FOO = os.getenv('FOO') # None
print (FOO)

BAR = os.environ.get('BAR') # None
print (BAR)


#BAZ = os.environ['BAZ'] # KeyError: key does not exist.

#print (BAZ)

os.environ['hello'] = "pYS  FSG S";
os.environ['A'] = "FSG S";
os.environ['B'] = "S";
os.environ['C'] = " FSGS";
os.environ['D'] = "pYSFSGS";
os.environ['E'] = "FSG S";
os.environ['F'] = "S";
os.environ['G'] = " FSGS";
os.environ['H'] = "pYSFSGS";

print (os.environ.get('hello','key does not exist.'))

print (os.environ['hello'])




aa = 0
for k in sorted (os.environ):
	print (k)
	aa +=1

print ("length of env varibles is :", aa)




'''
# Getting non-existent keys


'''
