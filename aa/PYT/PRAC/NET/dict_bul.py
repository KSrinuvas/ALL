#!/usr/bin/python3


'''

You have a record of N students. Each record contains the student's name, and their percent marks in Maths, Physics and Chemistry. The marks can be floating values. The user enters some integer  N followed by the names and marks for  N students. You are required to save the record in a dictionary data type. The user then enters a student's name. Output the average percentage marks obtained by that student, correct to two decimal places.


Sample Input 0

3
Krishna 67 68 69
Arjun 70 98 63
Malika 52 56 60
Malika
Sample Output 0

56.00

'''


i = 1;

no = int(input("Ente the no : "))
while (i <= no):
     
    str = input("Enter the details student : ")
    pp = input("Enter the person : ")
    sum = 0
    list = str.split(' ')
    name = list.pop(0)
    ss = len(list)
    #print (ss)
    for k in list:
        #print (k)
        sum += int(k)
    if name == pp:
        avg = sum/ss
        print ("{} is per {}".format(name,avg))
    
    i +=1




