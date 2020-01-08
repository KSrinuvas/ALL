#!/usr/bin/python3


from xml.dom.minidom import parse
import xml.dom.minidom



DOMTree = xml.dom.minidom.parse('/home/srm/aa/nn/CSV_TEST/abb.xml')

print (DOMTree)

opt = DOMTree.documentElement

print(opt)



emps = opt.getElementsByTagName("Emp")

print(emps)


for emp in emps:
   print ("*****EMP*****")
   print (emp.getAttribute("Details"))

