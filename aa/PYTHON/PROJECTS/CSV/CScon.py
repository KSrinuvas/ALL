#!/usr/bin/python3
import csv 
import json
import xlsxwriter
import pymysql
from lxml import etree 

##------------------------------------------------------------##
##   Descrption : input is csv file,To convert other format   ##
##                like JSON,XML,DBImysql,EXCEL                ##
##------------------------------------------------------------##


##----------------------------------------------------------##
##                 Read CSV file                            ##
##----------------------------------------------------------##

def Read_CSV(file):
    ll = []
    with open(file) as csv_file:  
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
    return ll
    
##==========================================================##


##----------------------------------------------------------##
##                    Write JSON                            ##
##----------------------------------------------------------##

def Write_JSON(file,data):
    wr_json = open(file,"w")
    data_json = json.dumps(data)
    wr_json.write(data_json)
    wr_json.close()
   
##=========================================================##


##---------------------------------------------------------##
##                  Write EXCEL file                       ##
##---------------------------------------------------------##


def Write_EXCEL(file,*args):
    workbook = xlsxwriter.Workbook(file)
    worksheet = workbook.add_worksheet()
    format = workbook.add_format({'color' : 'red'})
    #print(args)
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
                worksheet.write(row,col,cc)
                #print (row,col)
                col +=1
            row +=1                

    workbook.close()

##=========================================================##


##---------------------------------------------------------##
##                     Write DBI                           ##
##---------------------------------------------------------##

def Write_DBI(tab_name,args):
    db = pymysql.connect("localhost","root","srm","ATOZ" )
#   print("conncet db successfully")
    cursor = db.cursor()
#   new_tab = '''CREATE TABLE EMP (job_profile VARCHAR(50), employee_name VARCHAR(50), email VARCHAR(50))'''
#   cursor.execute(new_tab)
#   print ("create table")
    kk = list(args)
    head = kk.pop(0) 
   #print(head)
    sql = "INSERT INTO "+tab_name+" VALUES (%s, %s, %s)"
    
    cursor.executemany(sql, kk)

    db.commit()
    db.close()

##=========================================================##


##---------------------------------------------------------##
##                  Write XML file 
##---------------------------------------------------------##

def Write_XML(file,data):
    hh = data.pop(0)
    root = etree.Element("root")
    for x in data:
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



if __name__ == "__main__":
    dd = Read_CSV('../JSON/EmployData.csv')
   #print (dd)
    Write_JSON('ASD1.json',dd)
    Write_EXCEL('ASD1.xlsx',dd)
    Write_DBI('EMP',dd)
    Write_XML("Emp.xml",dd) 
