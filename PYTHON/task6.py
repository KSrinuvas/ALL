#!/usr/bin/python3


'''
Write a program that calculates and prints the value according to the given formula:
Q = Square root of [(2 * C * D)/H]
Following are the fixed values of C and H:
C is 50. H is 30.
D is the variable whose values should be input to your program in a comma-separated sequence.
'''

values  = []
C = 50
H = 30
ll = input("Enter the comman spe val : ").split(',')

for D in ll:
    Q = [(2 * C * int(D))/H]
    values.append(str(Q))

print (','.join(values))


