#!/usr/bin/python3
import csv 
import json
import xlsxwriter
import pymysql

from lxml import etree as ET


##----------------------------------------------------------##
##                 Read CSV file                            ##
##----------------------------------------------------------##

ll = []
with open('../JSON/EmployData.csv') as csv_file:  
    csv_reader = csv.reader(csv_file, delimiter=',')  
    line_count = 0  
    for row in csv_reader:
        if line_count == 0:  
          # print(row)
            ll.insert(0,row)		
            line_count += 1	
        else:
         #  print(row) 
            ll.append(row)

#print(ll)
##==========================================================##





##----------------------------------------------------------##
##                    Write JSON                            ##
##----------------------------------------------------------##

def Write_JSON(*data):
#   print(data)
    wr_json = open("AA.json","w")
    data_json = json.dumps(data)
   #print(data_json)
    wr_json.write(data_json)
    wr_json.close()
   
##=========================================================##


##---------------------------------------------------------##
##                  Write EXCEL file                       ##
##---------------------------------------------------------##

def Write_EXCEL(*args):
    workbook = xlsxwriter.Workbook('AA.xlsx')
    worksheet = workbook.add_worksheet()

    row = 0
    for aa in (args):
        col = 0
   #    print(aa)
        for data in (aa):
    #       print(data)
            worksheet.write(row,col,data)
   #        print(row,col)
            col +=1
        row +=1

    workbook.close()

##=========================================================##



##---------------------------------------------------------##
##                     Write DBI                           ##
##---------------------------------------------------------##

def Write_DBI(*args):
    db = pymysql.connect("localhost","root","srm","ATOZ" )
#   print("conncet db successfully")
    cursor = db.cursor()
#   new_tab = '''CREATE TABLE EMP (job_profile VARCHAR(50), employee_name VARCHAR(50), email VARCHAR(50))'''
#   cursor.execute(new_tab)
#   print ("create table")
    kk = list(args)
    head = kk.pop(0) 
#   print(head)
    sql = "INSERT INTO EMP  VALUES (%s, %s, %s)"
    
    cursor.executemany(sql, kk)

    db.commit()
    db.close()

##=========================================================##



##---------------------------------------------------------##
##                  Write XML file 
##---------------------------------------------------------##



def Write_XML(*data):
#   print(type(data))
    val1 = list(data)
    key1 = val1.pop(0)
#   print(key1)
#   print(val1)
    cou = 0
    root = ET.Element('Doc')
    level1 = ET.SubElement(root, 'Details')
    for i in range(len(key1)):
   #    print(i)
   #    print (key1[i])
        for aa in val1:
            kk = key1[i]
            vv = aa[i]
            print (kk,vv)
    tree = ET.ElementTree(root)
    tree.write('output1.xml', pretty_print=True, xml_declaration=True,   encoding="utf-8")


##=========================================================##



if __name__ == "__main__":
    Write_JSON(*ll)
    Write_EXCEL(*ll)
    Write_DBI(*ll)
    Write_XML(*ll)
    
