#!/usr/bin/python3

#Define a class named American which has a static method called printNationality.

#Use @staticmethod decorator to define class static method.

#Solution

class American(object):
    @staticmethod
    def printNationality():
        print ("America")
    def Add(a,b):
        sum = a +b
        print (sum)

anAmerican = American()
anAmerican.printNationality()
American.printNationality()

American.Add(10,20)
