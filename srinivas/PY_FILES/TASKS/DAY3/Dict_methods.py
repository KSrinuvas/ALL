#!/usr/bin/python3
dict = {'a':1,'b':2,'c':3}
print(dict)

## accessing elements form dict

print(dict['a'])

##  updating dict 

dict['a'] = 100;

print(dict['a'])

## delete the dict item

del dict['a']

print(dict)

## accessing keys and values by using items() function

for k,v in dict.items():
			print(k,v)


## accessing keys only keys() function 

for k in dict.keys():
			print(k)

## accessing values only values() function

for v in dict.values():
			print(v)


## Emety the dict 

dict.clear()


print(dict)


dict['name'] = 'srinu'
dict['age'] = 25
dict['from'] = 'kkd'



print(dict)



### cmp dict1 and dict2





dict = {'a':1,'b':2,'c':3}
dict1 = {'a':1,'b':2,'c':3}



dict = {'a':1,'b':2,'c':3}


## copy the dict


a = dict.copy()

print(a)





## updated the dict 

a.update({'name':'srinu'})
print(a)






## len of dict 

b = len(dict)

print("length of dict is :{}".format(b))


## type() function is used for to find the which type of varible 

print(type(a))


## cmp is not suported in python3



## dict string method   str(dict)

str = str(a)

print(str)




## dict fromkey method

## syt  dict.fromkeys(seq,[value])

seq = [1,2,3,4,5]
dd.fromkeys(seq,'srinu')

print(dd)













