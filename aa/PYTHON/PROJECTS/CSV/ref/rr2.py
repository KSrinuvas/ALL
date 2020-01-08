#!/usr/bin/python3

from lxml import etree

result = ""



root = etree.Element("data")

print (root)


print (root.tag)

a = 1

ab = {'a':10,'b':20,'c':30}


len = 3

for i in range(1, len):
    kk = "name" + str(i)
    vv = "RRR" + str(i)
    result = "ss" + str(i)  
    result1 = etree.SubElement(root,result)
    result1.text = str(i)
    result1.set(kk, vv)
    for j,k in ab.items():
        print (j,k)
        result1.set(j,str(k))
    print (i)
    


# Output
# 1 2 3 4 5 6 7 8 9 10

str = etree.tostring(root, pretty_print=True) 

#print(str)




with open('rr2.xml', 'wb') as doc:
    doc.write(etree.tostring(root, pretty_print = True))





'''



dd = [{'a':10,'b':20,'c':30},{'d':40,'e':50,'f':60},{'g':70,'h':80,'i':90}]
       
print (dd) 


b = 1
for i in dd:
    print (i)
    print (float(b))
    
    for k,v in i.items():
        print (k,v)
    b +=1

'''



hh = ['a','b','c']

#l = [[1,2,3],[4,5,6],[7,8,9]]

ll = [['x','y','z'],['p','q','r'],['5','6','7'],[4,"pp","gg"]]


root = etree.Element("data")

print (hh)

for i in ll:
    ss = 0
    aa = etree.SubElement(root,"Data")
    for k in i:
       #print(k)
       #print (hh[ss],k)
        if type(k)==int:
            print(k)

        bb = etree.SubElement(aa,"Sub_DATA")

        bb.set(hh[ss],k)
        ss +=1
    print ("\n")


str = etree.tostring(root, pretty_print=True) 

print(str)



with open('rr3.xml', 'wb') as doc:
    doc.write(etree.tostring(root, pretty_print = True))

