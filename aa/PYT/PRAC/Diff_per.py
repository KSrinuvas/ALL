#!/usr/bin/python3

import re
## calculate the %diff in Ref and base

def Read_file(file):
    fh = open(file,"r")
    key = '';
    ll = []
    sum = 0
    count = 0
    avg = 0
    dict = {} 
    for line in fh.readlines():
        line = line.strip()
        if re.match(r'^$',line): continue
         
        if re.search(r'\w+\s+\{',line):
            #print (line)       
            aa = re.search(r'(\w+)\s+\{',line)
            if aa is not None:
              # print (aa.group(1))
                try:
                    key = aa.group(1)
                    #print (key)
                except:
                    pass
        elif re.search(r'\d+',line):
            #print (line)
             ll = line.split(' ')
            #print (ll)
             for i in ll:
                #print (i)
                 sum += float(i)
                 count +=1

        elif re.search(r'\}',line):
            #print (sum)
            #print (count)
             avg = sum/count
            #print (avg)
             dict[key] = avg
    
  # print (dict)
    return dict
  # print ("\n") 



    fh.close()





ref_dict = Read_file("/home/srm/srinivas/Practice/Ref.txt")

base_dict = Read_file("/home/srm/srinivas/Practice/Base.txt")



#print (ref_dict)
#print (base_dict)

for item in ref_dict.keys():
    if item in base_dict:
        diff =  ( (ref_dict[item] - base_dict[item]) / (ref_dict[item]) * 100 )
        print ("{} differnce is {} ".format(item,diff))


