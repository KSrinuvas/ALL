#!/usr/bin/python3

from lxml import etree






test_keys = ["Rash", "Kil", "Varsha"] 
#test_values = [[1, 4, 5],[7,8,9],[10,11,12],[13,14,15],[16,17,18]] 
test_values = [['a','b','c'],['d','e','f'],['g','h','i'],['j','k','l']] 

res = {} 
			



ll = []
for i in range(len(test_keys)):
    li = []
    for kk in (test_values):
       # print (test_keys[i],kk[i])
         li.append(kk[i])
    ll.append(li)
    res[test_keys[i]] = li


print (res)

''' 

  
for key, value in res.items():
    cc = 0 
    for val in value:
        print (key,val)
        cc +=1
  # print ("\n")
  # print (cc)

'''

len1 = len(test_keys)

#print (len1)


## dict of list to list of dict 

rs = [{key : value[i] for key, value in res.items()} 
         for i in range(len1)] 
  
# printing result 
#print ("The converted list of dictionaries " +  str(rs)) 

print (rs)

'''

def RR(data):
    print (data)
    
    for i in data:
        root = etree.Element('Item')
        a = 1
        for key,value  in i.items():
           #print(kk,vv)
          #root = etree.SubElement(key)
           #root.set("hello", "Huhu")
           #root.set(kk, "vv")
       #print("\n")
           #print(etree.tostring(root, pretty_print=True))
           #print(etree.tostring(root, pretty_print=True).decode("utf-8"))            
           #print (key,value)
            data =  etree.SubElement(root, key).text = value
        with open('filename.xml', 'wb') as doc:
            doc.write(etree.tostring(root, pretty_print = True))





def exportAsXML(filename):
    root = etree.Element('Item')
    for key, value in fields: 
        if value != '':
            etree.SubElement(root, key).text = str(value) 

    with open(filename, 'wb') as doc: 
        doc.write(etree.tostring(root, pretty_print = True))

exportAsXML('Output1.xml')






def check(ss):
   #print (ss)
    root = etree.Element('Item')
    yy = len(ss)
   #print (yy)
    ii = 0
    for i in range(yy):
        dd =  ss[i]
        
        for kk,vv in dd.items():
           #print (kk,vv)


        
            



#if __name__ == "__main__":
#RR(rs)
#check(rs)


'''

