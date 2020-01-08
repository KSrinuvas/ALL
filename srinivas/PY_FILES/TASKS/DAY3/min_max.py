#!/usr/bin/python3
## to find the min and max elem in the list without using min() and max() functions 

#list1 = [1,5,6,7,8,9,10,11,12,20,100,2,15,17,19]
'''
list1.sort()
print(list1)

print("maximum no in a list: " , list1[-1])
print("minimum no in a list: " , list1[0])

'''



str = str(input("Enter the values with space and to find the minimum and maximum value in elements: "))
list2 = str.split(" ")
list2.sort() 
print("maximum no in a list: " , list2[-1])
print("minimum no in a list: " , list2[0])
