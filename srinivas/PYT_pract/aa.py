#!/usr/bin/python3
import re



def Read_file(file):
    fobj = open(file,"r")
    for line in fobj.readlines():
        line = line.strip()
       #print (line)
        Ovels(line)
        ee = re.search(r'[aeiou]+',line) 
        
        if ee is not None:
          # print (ee.group())
            pass
    fobj.close()
    


def Ovels(ll):
    dd = re.search(r'[^aeiou]+',ll) 
    if dd is not None:
        print (dd.group())
       



def Rr(file):
    fobj = open(file,'r')
    ll = fobj.readlines()
    print (type(ll))

    fobj.close()









if __name__ == "__main__":
    Read_file('new.txt')
    Rr('new.txt')
