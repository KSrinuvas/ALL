#!/usr/bin/python3

import pymysql 
import json
import csv
import xlsxwriter
from lxml import etree


##--------------------------------------------------------------##
##              Read JSON file  
##--------------------------------------------------------------##

def Read_JSON(file):
    fobj = open(file);
    aa = json.load(fobj)
    ll1 = []
    for k,v in aa.items():
        for p in v: 
            kk = []
            hh = []
            for i in sorted (p.keys()) :
                kk.append(p[i])
                hh.append(i)
            ll1.append(kk)        
        ll1.insert(0,hh)
    return ll1
    fobj.close()

##-------------------------------------------------------------##





#----------------------------------------------------------##
##                    Write Excel                            ##
##----------------------------------------------------------##


def Write_EXCEL(file,args):
    workbook = xlsxwriter.Workbook(file)
    worksheet = workbook.add_worksheet()
    format = workbook.add_format({'color' : 'red'})
    format2 = workbook.add_format()
    format2.set_text_wrap()

    row = 0
    for bb in args:
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
##                  Write XML file 
##---------------------------------------------------------##

def Write_XML(file,data1):
    hh = data1.pop(0)
    root = etree.Element("root")
    for x in data1:
        i = 0
        sub = etree.SubElement(root,"EMP")
        for y in x: 
            sub1 = etree.SubElement(sub,"Details")
            sub1.set(hh[i],str(y))
         #  print (sub1.get(hh[i]))
            i +=1
    with open(file, 'wb') as doc: 
        doc.write(etree.tostring(root, pretty_print = True))

##=========================================================##





##---------------------------------------------------------##
##                     Write DBI                           ##
##---------------------------------------------------------##

#["author", "title", "genre", "price", "publish_date", "description"]
# ['Corets, Eva', 'Maeve Ascendant', 'Fantasy', '5.95', '2000-11-17', text ]


def Write_DBI(tab_name,args):
    #print (args)


    db = pymysql.connect("localhost","root","srm","ATOZ")
    cursor = db.cursor()

    kk = list(args)
    head = kk.pop(0)
    #print (args)
    #print(head)

    sql = "INSERT INTO "+tab_name+" VALUES (%s, %s, %s)"

    cursor.executemany(sql, kk)

    db.commit()
    db.close()

##=========================================================##



##---------------------------------------------------------##
##                 
##---------------------------------------------------------##









if __name__ == "__main__":
    aa = Read_JSON('emp.json')
   #print (aa)
    Write_EXCEL('excel.xlsx',aa) 
    Write_CSV('DD.csv',aa)
    Write_DBI('EMP2',aa)   
    Write_XML('DD.xml',aa)
    









