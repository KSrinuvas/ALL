#!/usr/bin/python
b = {"a":[1,2,5],"b":(6,7,10)}
## build the dynamic way of dict
dict = {}
x = [1,2,5];y = (6,7,10)
dict['a'] = []
dict['b'] = []
dict['a'].extend(x)
dict['b'].extend(y)
dict['b'] = tuple(dict['b']) 
print(dict)
