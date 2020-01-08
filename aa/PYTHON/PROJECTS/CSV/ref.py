#!/usr/bin/python3

from xml.etree.ElementTree import ElementTree
from xml.etree.ElementTree import Element
import xml.etree.ElementTree as etree

root = Element('person')

print (root)

tree= ElementTree(root)

print (tree)

name = Element('name')
root.append(name)

name.text= 'Julie'

root.set('id','123')

print (etree.tostring(root))



tree.write(open(r'varstor.xml','wb'))
