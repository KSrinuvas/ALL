#!/usr/bin/python3


import os
print(os.environ['HOME'])

print (os.environ['TCLDATA'])


print (os.environ['PYTHONDATA'])



## count the _env varibles in cshell

list_env_var = []




for data in (os.environ):

	list_env_var.append(data)
	print (data)


print ("total no of env varibles in cshell is {}".format(len(list_env_var)))




