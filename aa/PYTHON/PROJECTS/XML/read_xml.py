#!/usr/bin/python3
import xml.dom.minidom as dd


def main():
    doc = dd.parse("/home/srm/aa/nn/CSV_TEST/abb.xml");

    print (doc.nodeName)
    print (doc.firstChild.tagName)
    for x in doc.findall('opt'):
        ii = x.find('EMP').text
        print (ii)
##

    opt = doc.getElementsByTagName("opt")

    print ("%d opt:" % opt.length)

    for i in opt:
        print(i.getAttribute("name"))
        



if __name__ == "__main__":
    main();
