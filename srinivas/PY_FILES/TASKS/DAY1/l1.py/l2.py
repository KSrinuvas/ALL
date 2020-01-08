#!/usr/bin/python

a = [[1,2,3,4,5],{"A":6},(7,8,9)]

print ("\nOriginal List is ==> {}\n".format(a))

#### To print the 1 to 9 


## dict 
a = [[1,2,3,4,5],{"A":6},(7,8,9)]

list = []
list_1to9 = []

## to convert the dict into list

for v in a[1].values():
    list.append(v)
    
    
#print(list)


a[1] = list

for k in a:
		for j in k:
				#print(j)
				list_1to9.append(j)

print ("To Create The 1 to 9 Elements of List =={}\n".format(list_1to9))







## Build the list in Dynamic way 

main_list = []
list = []
list.append(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)

dict = {"A":6}

## tuple 
## first updated the list and convert to tuple 

ll = []

ll.append(7)
ll.append(8)
ll.append(9)


tuple = tuple(ll)


main_list.append(list)
main_list.append(dict)
main_list.append(tuple)

print("To Build The List in Dynamic ==> {}\n".format(main_list))



