#!/usr/bin/python3
'''
Without using any string methods, try to print the following:


Note that "" represents the values in between.

enter 3
res 123
'''

no = int(input("Enter the no : "))

i = 1
st = ''
while (i <= no):
    st = st + str(i)
    i +=1
print ("{} value result is {}".format(no,st))  
