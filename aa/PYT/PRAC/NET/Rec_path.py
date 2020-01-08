#!/usr/bin/python3
import os
import sys
import re
import pprint

list = []
perl_ll = []
pyt_ll = []
tcl_ll = []
dict_main = {}
def Rec_file(path):
    pl,py,tcl = 0,0,0
    pyt_l,per_l,tcl_l = [],[],[]
    for ll in os.listdir(path):
        if re.match(r'^\.\.?\w+?',ll): continue
        dd = os.path.join(path,ll)
        #print (dd)
        if os.path.isdir(dd):
            Rec_file(dd)
        else:
            if re.search('\w+\.pl',dd):
              #print (dd)
               per_l.append(dd)
               pl +=1
            if re.search('\w+\.py',dd):
              #print (dd)
               pyt_l.append(dd)
               py +=1
            if re.search('\w+\.tcl',dd):
              #print (dd)
               tcl_l.append(dd)
               tcl +=1
            if re.search('\w+\.pm',dd):
              #print (dd)
               pass
    
    #print(per_l)
    perl_ll.extend(per_l)
    pyt_ll.extend(pyt_l)
    tcl_ll.extend(tcl_l)
    dict_main['PYTHON'] = pyt_ll
    dict_main['PERL'] = perl_ll
    dict_main['TCL'] = tcl_ll
    pprint.pprint(dict_main)
    list.append([pl,py,tcl])
    return list

#path = '/home/srm/srinivas/PL_FILES/TASKS1/'
path = '/home/srm/aa/PYT/PRAC/'

aa = Rec_file(path)

for i in range(len(aa[0])):
    s = 0
    for j in range(len(aa)):
        s += aa[j][i]
    #print (s)    
    
list12 = []
for i in zip(*aa):
   #print (i)
    list12.append(sum(i))
key = ['python','perl','tcl']  
dic = dict(zip(key,list12))
print (dic)

