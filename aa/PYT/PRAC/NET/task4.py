#!/usr/bin/python3

no = int(input("Enter the no: "))


if no < 0: 
   print ("-ve number")
elif no == 0:
   print ("no is eq to zero")
else:
   print ("+ve number")
   for i in range(0,no+1):
       i *=i
       print (i)
       

