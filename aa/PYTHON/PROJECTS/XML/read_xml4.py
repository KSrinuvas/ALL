#!/usr/bin/python3

import xml.etree.ElementTree as ET
data='''<?xml version="1.0" encoding="UTF-8"?>
<metadata>
<food>
    <item name="breakfast">Idly</item>
    <price>$2.5</price>
    <description>
   Two idly's with chutney
   </description>
    <calories>553</calories>
</food>
</metadata>
'''
myroot = ET.fromstring(data)
#print(myroot)
#print(myroot.tag)

#print (myroot.attrib)

#print (myroot[0].tag)



for x in myroot.findall('food'):
    item =x.find('item').text
    price = x.find('price').text
    print(item, price)




