#!/usr/bin/python3

list = [1,2,3,4,5,6,7,8]


## even 

for i in list:
    if (i%2 == 0):
#       print (i)
        pass

## odd

for i in list:
    if (i%2 != 0):
 #      print (i)
        pass

## prim numbers 

for i in range(1,100):
    for j in range(2,i):
        if (i%j == 0):
            break
    else:
        print (i)
        pass

print ("\n")


## using while loop


ss = 1
yy = 2
while (ss <= 100):
    for kk in range(yy,ss):
         if (ss%kk == 0):
            #print (ss)
             break
    else:
         print (ss)
    ss +=1




## if the no is prim or no check




num = int(input("Enter a number: "))
if num > 1:
    for i in range(2,num):
        if (num % i) == 0:
             print(num,"is not a prime number")
             print(i,"times",num//i,"is",num)
             break
    else:
      # print ("is a prime number")
        print (i)






## fact 

aa = int(input("Enter x factorial no: "))


fact = 1
for i in range(1,aa+1):
    print (i)
    fact *= i

print (fact)



fac = 1
i = 1
while (i <= aa):
    fac *= i
    i +=1

print (fac)







