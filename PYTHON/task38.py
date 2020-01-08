#!/usr/bin/python3

## Please write a program using generator to print the numbers which can be divisible by 5 and 7 between 0 and n in 
#comma separated form while n is input by console.




def DD(ll):
	for i in ll:
		i = int(i)
		if i%5==0 or i%7==0:
			print (i)



ss = input()

ll = ss.split(',')


DD(ll)
