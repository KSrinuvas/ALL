#!/usr/bin/python3

from lxml import etree



tree = etree.parse("movies.xml")

print (etree.tostring(tree))


