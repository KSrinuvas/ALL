#!/usr/bin/python3

for i in range(10,20):
    for j in range(2,i):
        if (i%j == 0):
            break;
    else:
        print (i)


