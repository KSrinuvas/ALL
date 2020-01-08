#!/usr/bin/python
a = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
print("\n")
print( "Original List ===>{}".format(a))
even_no = []
odd_no = []
first_ele_list = []
last_ele_list = []
#first_element's in a list 

for i in a:
        for h in i:
           # print (h)

         ### even no's in a list's
            if (h%2==0):
                even_no.append(h)
        ### odd no's in a list's 
            else:
                odd_no.append(h)
print("\n")
print ("Even_no's in a List's ==> {}".format(even_no))
print("\n")
print ("Odd_no's in a List's ==> {}".format(odd_no))

print("\n")


###  first element's in a list's and list element's in a list
for i in a:
        #print (i)
       ### first element's in a list's 
       bb =i.pop([0][0])
        #print (i)
       #print(bb)
       first_ele_list.append(bb)
       ## last element's in a list's
       cc = i.pop()
       last_ele_list.append(cc)
       #print(cc)

print ("First_Elemen's in a List's  ==> {}".format(first_ele_list))
print("\n")
print ("Last_Elemen's in a List's ==> {}".format(last_ele_list))

print("\n")


## build the list in dynamic way

dynamic_list1  = []
a = []
b = []
c = []
a.append(1)
a.append(2)
a.append(3)
a.append(4)
b.append(5)
b.append(6)
b.append(7)
b.append(8)
c.append(9)
c.append(10)
c.append(11)
c.append(12)

dynamic_list1.insert(0,a) 
dynamic_list1.insert(1,b) 
dynamic_list1.insert(2,c) 



print("To Build The List Dynamic ==> {}".format(dynamic_list1))




print("\n")



'''


dynamic_list1.append([5,6,7,8])
dynamic_list1.append([9,10,11,12])


print(dynamic_list1)

'''


'''
a = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
dynamic_list  = []


for i in a:
        dynamic_list.append(i)

print(dynamic_list)
'''




###############################################################################
###############################################################################


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



###################################################################################
###################################################################################


