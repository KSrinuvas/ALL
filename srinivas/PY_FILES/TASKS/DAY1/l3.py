#!/usr/bin/python
b = {"a":[1,2,5],"b":(6,7,10)}
print ("\n")
print ("Before the Dict :{}".format(b))

## to convert the tuple to list
b['b'] = list(b['b'])
#print(b)
b['a'].insert(2,3)
b['a'].insert(3,4)
b['b'].insert(2,8)
b['b'].insert(3,9)
## again convert the list to tuple
b['b'] = tuple(b['b'])
 
print ("\n")
print("To add to the missing serial elements in List and Tuple:{}".format(b))
print ("\n")


## build the dynamic way of dict


dict = {}

dict['a'] = []
dict['b'] = []
dict['a'].append(1)
dict['a'].append(2)
dict['a'].append(3)
dict['a'].append(4)
dict['a'].append(5)
dict['b'].append(6)
dict['b'].append(7)
dict['b'].append(8)
dict['b'].append(9)
dict['b'].append(10)
dict['b'] = tuple(dict['b'])
print("Build the dict dynamic:{}".format(dict))
print ("\n")
