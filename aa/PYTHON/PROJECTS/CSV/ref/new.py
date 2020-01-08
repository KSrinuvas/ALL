#!/usr/bin/python3

from lxml import etree


ll = [{'Rash': 'a', 'Kil': 'b', 'Varsha': 'c'}, {'Rash': 'd', 'Kil': 'e', 'Varsha': 'f'}, {'Rash': 'g', 'Kil': 'h', 'Varsha': 'i'}]




root = etree.Element("root")


print (root.tag)

str  = "ch1"


ch1 = etree.SubElement(root, str)

print (ch1.tag)



ss = 1
for i in ll:
    stp = "BOOK" + str(ss)
    for k,v in i.items():
        print(k,v)
    print("\n") 
    ss +=1 





