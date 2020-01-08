#!/usr/bin/python3
import re


def Read_file(file):
    dict = {}
    fh = open(file,"r")
    for line in fh.readlines():
        line = line.strip() 
        if re.match(r'^\s*$',line): continue
        line = ' '.join(line.split(' '))
       #print (line)
        try:
            dict[line] +=1
        except: 
            dict[line] = 1
    for dd in sorted dict.keys():
        print (dd)

    fh.close()




if __name__ == "__main__":
    Read_file("file.txt")


