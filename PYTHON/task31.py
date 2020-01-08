#!/usr/bin/python3
import re

#Assuming that we have some email addresses in the "username@companyname.com" format, please write program to print 
#the user name of a given email address. Both user names and company names are composed of letters only.


email = "my addresses in the username@companyname.com"

bb = re.search(r'(\w+)\@(\w+)',email)

if bb is not None:
	print (bb.group(1))
	print (bb.group(2))




