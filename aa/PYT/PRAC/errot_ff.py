#!/usr/bin/python3
import re

def Read_file(file):
   fh = open(file,"r")
   err = 0
   warn = 0
   for line in fh:
       line = line.strip()
       if re.match(r'^$',line): continue
       if re.match(r'^\#',line): continue
       print (line)
       if re.match(r'error',line,re.I):
          #print (line)   
           pass
       aa = re.search(r'(^error)',line,re.I);
       if aa:
           #print (aa.group()) 
           err +=1
       bb = re.search(r'(^warn.*)',line,re.I);
       if bb:
           #print (bb.group())
           warn +=1
   print ("no of error in a file :",err)
   print ("no of warn in a file : ",warn)

   fh.close()

Read_file("error.txt")
