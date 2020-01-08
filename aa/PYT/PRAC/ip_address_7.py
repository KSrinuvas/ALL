#!/usr/bin/python3
import re
def Read_file(file):
    fh = open(file,'r')
    for line in fh.readlines():
        line = line.strip()
       #print (line)
        aa = re.search(r'\d+\.\d+\.\d+\.\d+',line)
        if aa is not None:
        #   print (aa.group())
            #new = re.sub(r'(192)(\.\d+\.\d+\.\d+)', r"152\g<2>",aa.group())
            new = re.sub(r'(\d+)(\.\d+\.\d+\.\d+)', r"152\g<2>",aa.group())
            #print (new)
            sec = re.sub(r'(\d+\.)(\d+)(\.\d+\.\d+)', r"\g<1>122\g<3>",aa.group())
            #print (sec)
            last = re.sub(r'(\d+\.\d+\.\d+\.)(\d+)', r"\g<1>011",aa.group())
            print(last)
         #  print (aa.group())
    fh.close()

            




if __name__ == "__main__":
    Read_file('iicon.txt')



