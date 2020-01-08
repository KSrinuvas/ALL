#!/usr/bin/python3
import sys
## flag 

def Avg(ll):
    sum = 0
    avg = 0
    count = 0
    for i in ll:
       #print (i)
        sum += i
        count +=1
   #print (sum) 
   #print (count)
    avg = sum/count
    print (avg)

sys.argv.pop(0)
#print (sys.argv)


ll = [int(i) for i in sys.argv]
#print (ll)
ss = 0
for a in ll:
    ss +=a
print (ss)





if __name__ == "__main__":
   #Avg(10,20,30,40,50,60,70,80,90)
    Avg(ll)
