#!/usr/bin/python3

'''
Write a program that accepts a sentence and calculate the number of upper case letters and lower case letters.
Suppose the following input is supplied to the program:
Hello world!
Then, the output should be:
UPPER CASE 1
LOWER CASE 9
'''


aa = input()
dd = {'upper' : 0,'lower': 0}
for i in aa:
    if i.isupper():
        dd['upper'] +=1
    elif i.islower():
        dd['lower'] +=1

print (dd) 
