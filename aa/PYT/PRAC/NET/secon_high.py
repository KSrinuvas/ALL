#!/usr/bin/python3

list1 = [10, 20, 4, 45, 99] 
  
max=max(list1[0],list1[1]) 


#print (max)



secondmax=min(list1[0],list1[1]) 
#print (secondmax)

for i in range(2,len(list1)):
  # print (i)
    if list1[i]>max:
        secondmax=max
        max=list1[i]
     #  print (max)
    else:
        print (list1[i])
        if list1[i]>secondmax: 
            secondmax=list1[i]
            print (secondmax) 
print("Second highest number is : ",str(secondmax)) 

