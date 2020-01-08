#!/usr/bin/python3

import pymysql
import json
import csv
import xlsxwriter
from lxml import etree

##--------------------------------------------------------------------##
##                   Read mysql database
##--------------------------------------------------------------------##

def Read_DBI(table_name):    
    # Open database connection
    db = pymysql.connect("localhost","root","srm","FTOS" )
    
    # prepare a cursor object using cursor() method
    cursor = db.cursor()
    li = []
    # Prepare SQL query to INSERT a record into the database.
    #sql = "SELECT * FROM EMP_DATA12" 
    sql = "SELECT * FROM "+table_name 
    try:
       # Execute the SQL command
       cursor.execute(sql)
       # Fetch all the rows in a list of lists.
       title = [i[0] for i in cursor.description]
       li.insert(0,title)
     # print(title)                              
       results = cursor.fetchall()
       for row in results:
       #  print(row)
          li.append(list(row))
    except:
       print ("Error: unable to fetch data")
    
    return li
    print (li)    	 
    # disconnect from server
    db.close()


##=========================================================##



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


##----------------------------------------------------------##
##                    Write JSON                            ##
##----------------------------------------------------------##

def Write_JSON(file,data):
    wr_json = open(file,"w")
    data_json = json.dumps(data)
    wr_json.write(data_json)
    wr_json.close()
   
##=========================================================##


if __name__ == "__main__":
    pp = Read_DBI("EMP_DATA12")
   #pp= Read_DBI("DATA")
   #print (pp)
   #Write_JSON('DD.json',pp)
   #Write_EXCEL('excel.xlsx',pp)
   #Write_CSV('DD.csv',pp)
   #Write_XML('DD.xml',pp)

