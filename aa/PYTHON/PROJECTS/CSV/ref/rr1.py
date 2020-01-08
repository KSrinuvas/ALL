from lxml import etree

a = "ss"
b = "yy"


dict = {'a':10,'b':20,'c':30}

dd = [{'a':10,'b':20,'c':30},{'d':40,'e':50,'f':60},{'g':70,'h':80,'i':90}]

print (dd)



root = etree.Element("root")
root.set("interesting", "somewhat")
aa = etree.SubElement(root,"data")
aa1 = etree.SubElement(root,"data1")
aa2 = etree.SubElement(root,"data2")

aa1.set(a,b)
aa2.set(a,b)
aa.set('ss','vv')

aa = 1
for k,v in dict.items():
    print (k,v)
    print (aa)
    #ss = "Book" + str(aa)
		
    #print (ss)
    #ss = etree.SubElement(root,ss)
    pp = etree.SubElement(root,k)
    pp.text = str(v) 
    aa +=1
    



str = etree.tostring(root, pretty_print=True)

print (str)

# b'<root interesting="somewhat">\n  <test/>\n</root>\n'
b'<root interesting="somewhat" ss="yy">\n  <test/>\n</root>\n'
b'<root interesting="somewhat" a="b">\n  <test/>\n</root>\n'
b'<root interesting="somewhat">\n  <test/>\n</root>\n'
b'<root interesting="somewhat" ss="yy">\n  <test/>\n</root>\n'
b'<root interesting="somewhat" ss="yy">\n  <data/>\n  <test/>\n</root>\n'
b'<data ss="yy">\n  <test/>\n</data>\n'


with open('filename11.xml', 'wb') as doc:
    doc.write(etree.tostring(root, pretty_print = True))







root = etree.Element("root")



aa = 1
for i in dd:
    #print (i)
    key = i.keys()
    val = i.values()
    #print (key)
    #print (val)
    print (aa.str())     
    for k,v in i.items():
        print (k,v)
        print (aa)
    
    aa +=1
    print ("\n")













