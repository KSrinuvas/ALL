#!/usr/bin/python3

from lxml import etree
import json
import xlsxwriter
import csv
import pymysql


def parseXML(xmlFile):
    yy = []
    """
    Parse the xml
    """
    with open(xmlFile) as fobj:
        xml = fobj.read()

    root = etree.fromstring(xml)

    for appt in root.getchildren():
        aa = appt.get('id')
        head = []
        li = []
        #print (aa)
        head.append('id')
        li.append(aa)
        for elem in appt.getchildren():
            if not elem.text:
                text = "None"
            else:
                text = elem.text
            li.append(text) 
            head.append(elem.tag)
            #print(elem.tag + " => " + text)
        yy.append(li)
        #print ("\n")
                
   #print (head)
    yy.insert(0,head)
    return yy
   #print (yy)




#----------------------------------------------------------##
##                    Write JSON                            ##
##----------------------------------------------------------##

def Write_JSON(file,data):
#   print(data)
    wr_json = open(file,"w")
    data_json = json.dumps(data)
   #print(data_json)
    wr_json.write(data_json)
    wr_json.close()

##=========================================================##




#----------------------------------------------------------##
##                    Write Excel                            ##
##----------------------------------------------------------##


def Write_EXCEL(file,*args):
    workbook = xlsxwriter.Workbook(file)
    worksheet = workbook.add_worksheet()
    format = workbook.add_format({'color' : 'red'})
    format2 = workbook.add_format()
    format2.set_text_wrap()

    for aa in args:
        row = 0
        for bb in aa:
            col = 0
            for cc in bb:
                if (row == 0):
          #         print (row,col)
                    worksheet.write(row,col,cc,format)
                    col +=1
                    continue
                worksheet.write(row,col,cc,format2)
                #worksheet.write(row,col,cc)
                #print (row,col)
                col +=1
            row +=1

    workbook.close()



##=========================================================##






##---------------------------------------------------------##
##                     Write_CSV file                      ##
##---------------------------------------------------------##


def Write_CSV(file,args):
    fobj = open(file,"w")
    wr_csv = csv.writer(fobj)
    for i in (args): 
       #print(i)    
        wr_csv.writerow(i)        
    fobj.close()


##---------------------------------------------------------##
##                  End CSV file                           ##
##---------------------------------------------------------##






##---------------------------------------------------------##
##                     Write DBI                           ##
##---------------------------------------------------------##

#["author", "title", "genre", "price", "publish_date", "description"]
# ['Corets, Eva', 'Maeve Ascendant', 'Fantasy', '5.95', '2000-11-17', text ]


def Write_DBI(tab_name,args):
    db = pymysql.connect("localhost","root","srm","ATOZ" )
    cursor = db.cursor()
 
    kk = list(args)
    head = kk.pop(0) 
    #print(head)
    sql = "INSERT INTO "+tab_name+" VALUES (%s, %s, %s, %s, %s, %s, %s)"
    
    cursor.executemany(sql, kk)

    db.commit()
    db.close()

##=========================================================##














if __name__ == "__main__":
    gg = parseXML("book.xml")
   #print (gg)
    Write_JSON("new.json",gg)
    Write_EXCEL("new.xlsx",gg)
    Write_CSV("new.csv",gg) 
    Write_DBI('BOOK',gg)






