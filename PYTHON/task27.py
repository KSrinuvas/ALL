#!/usr/bin/python3

## oops 
class Calcu(object):
    @staticmethod
    def Add(a,b):
        sum = a+b
        print (sum)
    def Sub(a,b):
        sub = a-b
        print (sub)
    def Mul(a,b):
        mul = a * b
        print (mul)
    def Div(a,b):
        div = a/b
        print (div)


Calcu.Add(10,20)
Calcu.Sub(200,20)
Calcu.Mul(20,20)
Calcu.Div(200,20)



