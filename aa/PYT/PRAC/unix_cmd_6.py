#!/usr/bin/python3
import os


from subprocess import call

## run the unix cmd in python

aa = os.system('ls -l')

print (aa)

os.system('date')

bb = call('pwd')

print (bb)


#os.system('clear')

call('pwd')



#os.system('python3 unix_cmd_6.py')
    


