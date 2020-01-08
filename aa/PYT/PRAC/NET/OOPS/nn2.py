#!/usr/bin/python3

#Write a function to compute 5/0 and use try/except to catch the exceptions.


def compute():
	return 5/0

try:
	compute()
except ZeroDivisionError:
    print ("division by zero!")
except Exception:
    print ('Caught an exception')
finally:
    print ('In finally block for cleanup')


