#!/usr/bin/python3

#Please write a program using generator to print the even numbers between 0 and n in comma separated form while n 
#is input by console.


def EvenGenerator(n):
    i=0
    while i<=n:
        if i%2==0:
            yield i
        i+=1


n=int(input())
values = []
for i in EvenGenerator(n):
    values.append(str(i))

print (",".join(values))

   









