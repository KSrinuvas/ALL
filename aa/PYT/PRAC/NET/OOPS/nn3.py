#!/usr/bin/python3

##Define a custom exception class which takes a string message as attribute.



#To define a custom exception, we need to define a class inherited from Exception.


class MyError(Exception):
    """My own exception class

    Attributes:
        msg  -- explanation of the error
    """

    def __init__(self, msg):
        self.msg = msg
        print (self.msg)

error = MyError("something wrong")

print (error)
