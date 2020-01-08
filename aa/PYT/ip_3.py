#!/usr/bin/python3

import re

##

## scenario 1


## read a file and count the no of ip's and mails 

def Read_file(file):

    fobj = open(file,"r")
    no_ip = 0
    no_em = 0 
    for line in fobj.readlines():
        line = line.strip()
        if re.match(r'^\s*$',line):
            continue
       ##print (line)
        aa =  re.search(r'\d+\.\d+\.\d+\.\d+',line)
        bb =  re.search(r'\w+\@\w+.com',line)
        if bb is not None:
            ##print (bb.group())
            no_ip +=1

        if aa is not None:
            #print (aa.group())
            no_em +=1
       ##print (line)
      
    print ("No of ip is {} and no Emails in {} ." .format(no_ip,no_em))
                 

    fobj.close()



Read_file("file1.txt")






## scenario 2

## in a file one line multiple ip address is there



def Read_file1(file):
    fh = open(file,"r")
    ll = []
    count_ip = 0
    count_em = 0
    for line in fh.readlines():
        line = line.strip()
       
        if re.match(r'^\s*$',line):
            continue
     #  print (line)  
        ll = line.split(' ')
       #print (ll) 
        for val in ll:
   #        print(val) 
            aa = re.search(r'\w+\@\w+\.com',val)
            bb = re.search(r'\d.+\d.+\d.+\d+',val)
            if aa is not None:
     #          print (aa.group())
                count_em +=1
            if bb is not None:
      #         print (bb.group())
                count_ip +=1
             
   #print (count_ip)        
    print ("No of ip is {} and no Emails in {} ." .format(count_ip,count_em))
  # print ("\n")
    fh.close()



Read_file1("file3.txt")



