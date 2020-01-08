#!/usr/bin/python3

import re

pa = '/home/srm/srinivas/PL_FILES/TASKS1/l2.txt'



def Read_file(file):
    fh = open(file,"r")
    ll = []
    rabbit = 0
    you = 0
    are = 0
    dict = {}
    for line in fh.readlines():
        line = line.strip()
        ## skip the empty line in a file
        if re.match(r'^\s*$',line): continue
        ## skip the comment lines in a file
        if re.match(r'^\#',line): continue
        ## remove the line end back spaces
        line = ' '.join(line.split(' ')) 
        ll = line.split(' ')
        for word in ll:
            if not word.strip():
                continue
            else:
              # print (word)
                aa = re.search(r'rabbi.*',word,re.I)
                if aa is not None:
                   #print (aa.group())
                    rabbit +=1
                    
                bb = re.search(r'you',word,re.I)
                if bb is not None:
                   #print (bb.group())
                    you +=1
                cc = re.search(r'are',word,re.I)
                if cc is not None:
                   #print (cc.group())
                    are +=1
                
    
    dict['rabbit'] = rabbit
    dict['you'] = you
    dict['are'] = are
         
    print (rabbit)
    print (you)
    print (are)
    print (dict)

    fh.close()




if __name__ == "__main__":
    Read_file(pa)

