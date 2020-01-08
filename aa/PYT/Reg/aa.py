#!/usr/bin/python3
import sys; 
from math import *
prog = 'print("The sum of 5 and 10 is", (5+10))'

exec(prog)

a = 10

exec(prog)

aa  = 'print("the sum of 5 and 10 is ", (5+10))'

print (aa)

exec(aa)


exec("print(factorial(5))", {"factorial":factorial})

exec("print(factorial(5))", {"factorial":factorial})




exec("print (fact(5))", {"fact":factorial})


input("\n\nPress the enter key to exit.")





## multiple sstatement on single line 


x = 'foo'; 
sys.stdout.write(x + '\n')



sys.stdout.write("hello" + "\n")


#sys.stdout.write("ohhh")



try:
   print (aaaa)
except:
   print ("'aaaa' varible no there error")




print ("file name is {}" .format(sys.argv[0]))
print (sys.argv[1])
