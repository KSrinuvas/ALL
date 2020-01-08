#!/usr/bin/perl
#import system
import os

list = ('pwd','ls -l','mkdir hello','ps')

for i in list:
		a = os.system(i)
		print(a)



