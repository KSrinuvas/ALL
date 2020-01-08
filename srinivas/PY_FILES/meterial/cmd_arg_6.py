#!/usr/bin/python3

##-----------------------------------------------------
## Accessing command-line argument
##-----------------------------------------------------

import sys;   ## sys is a module to load the sys module using import 
print ("no of args",len(sys.argv))  ## print the length of the  arguments 
print ("no of list",str(sys.argv))  ## to print the list of element and first elements is file name 

print ("file name is :",sys.argv[0])


print ("last element in a argv :", sys.argv[-1])


print ("threed element in argv :", sys.argv[3])

print ("sixth element in argv :", sys.argv[6])




## sum of command line arguments 

sys.argv.pop(0)


last = sys.argv.pop() ## by defult removes the last element in list cmd
print ("last elements in cmd line :", last);



sum = 0;
for i in sys.argv:
		sum = sum + int(i)	
		#print(i)


print ("sum of the command line arguments is :", sum)
