#!/usr/bin/python3
import re

'''
Assuming that we have some email addresses in the "username@companyname.com" format, please write program to print the user name of a given email address. Both user names and company names are composed of letters only.
'''


def Emp(ff):
	fh = open(ff,'r')
	for line in fh.readlines():
		line = line.strip()
		bb = re.search(r'(\w+)\@(\w+)\.(\w+)', line);
		if bb:
			print ("user names is : {}".format(bb.group(1)))












file = "emails.txt"

Emp(file);
