#!/usr/bin/python3
from lxml import etree


def exportAsXML(filename):
    fields = [
        ['Realm', 'self.Realm'],
        ['ActiveState', 'self.ActiveState'],
        ['Name', 'self.Name'],
        ['Type', 'self.Type'],
        ['Level', 'self.Level'],
        ['Quality', 'self.Quality'],
        ['Bonus', 'self.Bonus'],
        ['AFDPS', 'self.AFDPS'],
        ['Speed', 'self.Speed'],
        ['Origin', 'self.Origin'],
        ['DamageType', 'self.DamageType'],
        ['LeftHand', 'self.LeftHand'],
        ['Requirement', 'self.Requirement'],
        ['Notes', 'self.Notes']
    ]
    print (fields)
    root = etree.Element('Item')
    for key, value in fields:
        print (key,value)
        if value != '':
            etree.SubElement(root, key).text = value

    with open(filename, 'wb') as doc:
        doc.write(etree.tostring(root, pretty_print = True))

exportAsXML('Output.xml')






