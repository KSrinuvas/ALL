#!/usr/bin/python3

#Define a class named American which has a static method called printNationality.


class American(object):
    def printNationality(self):
        print ("American")
    def dec(self,a,b):
        sum = a+b
        print (sum)
    def print(self):
        print ("ok")

anAmarican = American()
anAmarican.printNationality()
anAmarican.dec(10,20)
anAmarican.print()




