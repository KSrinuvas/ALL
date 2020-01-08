#!/usr/bin/python3

def aa(a,b):
    print (a,b)

aa(10,20)

def bb(a=0,b=0):
    print (a,b)

bb(100,200)




def cc(a=10,b=0):
    print (a,b)

cc(100)




## function arguments 

## Require argument

def aa(str):
    print (str)


aa("hello")




## kw ar

def hh(name,age):
    print (name)
    print (age)

hh(name = "ss" , age = 10)





## kw 


def gg(name,age = 10):
    print (name)
    print (age)

gg(name = "ss")







sum = lambda a,b : a + b

print (sum(10,20))
