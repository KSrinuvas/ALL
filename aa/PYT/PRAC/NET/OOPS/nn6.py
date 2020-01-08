#!/usr/bin/python3
import re
'''
Write a program which accepts a sequence of words separated by whitespace as input to print the words composed of digits only. '''

s = input()
bb =  re.findall("\d+",s)
print (bb)












