#!/usr/bin/python3
import sys
## get env varibles in a python3

import os


for data in os.environ:
	print (data)


## check the env varible in a cshell

print (os.environ['TCLDATA'])

print (os.environ['PYTHONDATA'])

print (os.environ['PERLDATA'])



print(os.environ.get('KEY_THAT_MIGHT_EXIST'))


print (os.environ.get('PERLDATA'))


print (os.getenv('HHH', "HHH IS NOT AVILABLE IN SHELL ENV VARIBLE"))


print(sys.prefix)





if 'HOME' in os.environ:
	print ("home env varible is avilable")
else:	
	print ("home env varible is not avilable")



if 'TCLDATA' not in os.environ:
	print ("tcldata varible is not avilable in env varibles ")
else:
	print ("tcldata varible is avilable in the env varibles ")




## you can also use defult values to get ()

print (os.environ.get('HOOO','HOOOO is not there in env'))




if os.environ['HOME'] is None:
	print ("home is nome in env ")
else:
	print ("home is not none")



if os.environ['PERLDATA'] is not None:
	print ("perldata is not none")
else:
	print ("perldata is none")






print (os.environ.get('dg',"dg is not exists in your env varibles"))



os.environ['TCLDATA'] = "/hh/hh/kk/"



print (os.environ.get('TCLDATA'))



os.environ.get('OK','/home/srm')


## set a env varibles in python

os.environ['PP'] = "HELLO"

print (os.environ['PP'])






for k,v in os.environ.items():
	print ("{}     ==>    {} ".format(k,v))
	



for k in os.environ.keys():
	print (k,"                                    ",os.environ[k])


