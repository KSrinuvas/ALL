#!/usr/bin/python3

import pymysql
import json
import csv
import xlsxwriter
from lxml import etree

#li = []




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



#print(li)



##---------------------------------------------------------##
##              Write json file                            ##
##---------------------------------------------------------##



def Write_JSON(file,*args):
    wr_json = open(file,"w")
 #  print(args)
 #  print("\n\n")
    p_json = json.dumps(args)
    wr_json.write(p_json)
 #  print(p_json)
    
    wr_json.close()









##---------------------------------------------------------##
##         						 Write_CSV file                      ##
##---------------------------------------------------------##


		

def Write_CSV(file,*args):
    fobj = open(file,"w")
    wr_csv = csv.writer(fobj)
    for i in (args):
       #print(i)    
        wr_csv.writerow(i)        
    fobj.close()


##---------------------------------------------------------##
##                  End CSV file                           ##
##---------------------------------------------------------##


'''


##---------------------------------------------------------##
##                  Write EXCEL file                       ##
##---------------------------------------------------------##


def Write_EXCEL(*args):
    workbook = xlsxwriter.Workbook('BB.xlsx')
    worksheet = workbook.add_worksheet()
    
    row = 0
    for aa in (args):
        col = 0
   #    print(aa)
        for data in (aa):
            print(data)
            worksheet.write(row,col,data)
 #          print(row,col)
            col +=1
        row +=1
        
    workbook.close()



##------------------------------------------------------##
##                END excel file                        ##
##------------------------------------------------------##


'''

##-------------------------------------------------------##
##               Write XML file                          ##
##-------------------------------------------------------##




def Write_EXCEL(*args):
    workbook = xlsxwriter.Workbook('BB.xlsx')
    worksheet = workbook.add_worksheet()
    
    row = 0
    for aa in (args):
        col = 0
   #    print(aa)
        for data in (aa):
            print(data)
    workbook.close()





##--------------------------------------------------------##
##                End XML file                            ##
##--------------------------------------------------------##






if __name__ == "__main__":
    pp = Read_DBI("EMP_DATA12")
    #pp= Read_DBI("DATA")
    print (pp)
    #Write_JSON(pp)
    #Write_CSV(pp) 
    #Write_EXCEL(pp)   	
		#Write_XML(pp)
    pass	
