#!/usr/bin/python3

import sys
from lxml import etree

root = etree.Element("root")
root.set("interesting", "somewhat")
child1 = etree.SubElement(root, "test")
str = etree.tostring(root, pretty_print=True)




my_tree = etree.ElementTree(root)
with open('filename.xml', 'wb') as f:
    f.write(etree.tostring(my_tree))





print(str)
