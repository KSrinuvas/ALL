#!/usr/bin/python3
ll = []
def Read_file(file):
    dict = {}
    fh = open(file,"r")
    hh = fh.readline()
    hh = hh.strip()
    hd = hh.split(',')
    for i in fh.readlines():
        i = i.strip()
        dd = i.split(',')
        for p in range(0,len(hd)):
            print ("{} => {}".format(hd[p],dd[p]))
            dict[hd[p]] = dd[p]
        print (dict)
        ll.append(dict)
    print (ll)




Read_file("nn.txt")

