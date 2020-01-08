#!/usr/bin/python3
from lxml import etree

def parseBookXML(xmlFile):

    with open(xmlFile) as fobj:
        xml = fobj.read()

    root = etree.fromstring(xml)

    book_dict = {}
    books = []
    print (root.tag)
   

    for book in root.getchildren():
        aa = book.get('id')
        print (aa) 
        for elem in book.getchildren():
            if not elem.text:
                text = "None"
            else:
                text = elem.text
         #  print(elem.tag + " => " + text)
            book_dict[elem.tag] = text
        if book.tag == "book":
            books.append(book_dict)
            book_dict = {}
    return books

if __name__ == "__main__":
    aa = parseBookXML("book.xml")
    print (aa)
