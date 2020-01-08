#!/usr/bin/python3
import re
import os
## write a file 

fobj = open("aa.txt","w")

print (fobj.mode)

fobj.write("this is srinu\n")
fobj.write("this is my email address ss123@gmail.com\n")
fobj.write("good bye\n")

## close file handler

fobj.close()




## read file


fh = open("aa.txt","r")





print (fh.name)
print (fh.mode)
for line in fh.readlines():
    line = line.strip()
    ll = line.split(' ')
#   print (line)
    for a in ll:
        if re.match(r'srinu',a):
            print (a)


fh.seek(1, 0)
print (fh.read(10))


fh.close() 




## append 

os.rename('aa.txt','new_file.txt')
#os.remove('new_file.txt')


#os.mkdir("new")
#os.rmdir("new")

aa = os.getcwd()
print (aa)





try:
    ff = open("new_file1.txt","w")
    ff.write("hello\n")
except IOError:
    print("Error : can\'t find file")
else:
    print ("Written content file write successfully\n");
    ff.close()

    


