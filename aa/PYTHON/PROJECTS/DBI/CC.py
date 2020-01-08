#!/usr/bin/python3

import pymysql
import json
import csv
import xlsxwriter




# Open database connection
db = pymysql.connect("localhost","root","srm","FTOS" )

# prepare a cursor object using cursor() method
cursor = db.cursor()
li = []
# Prepare SQL query to INSERT a record into the database.
sql = "SELECT * FROM EMP_DATA12" 
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
	 
# disconnect from server
db.close()



print(li)



##---------------------------------------------------------##
##              Write json file                            ##
##---------------------------------------------------------##



def Write_JSON(*args):
    wr_json = open("AA.json","w")
    print(args)
    print("\n\n")
    p_json = json.dumps(args)
    wr_json.write(p_json)
    print(p_json)
    
    wr_json.close()









##---------------------------------------------------------##
##         						 Write_CSV file                      ##
##---------------------------------------------------------##


		

def Write_CSV(*args):
    file = open("AA.csv","w")
    wr_csv = csv.writer(file)
    for i in (args):
        print(i)    
        wr_csv.writerow(i)        
    file.close()


##---------------------------------------------------------##
##                  End CSV file                           ##
##---------------------------------------------------------##






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
            print(row,col)
            col +=1
        row +=1
        
    workbook.close()



##------------------------------------------------------##
##                END excel file                        ##
##------------------------------------------------------##





##-------------------------------------------------------##
##               Write XML file                          ##
##-------------------------------------------------------##











##--------------------------------------------------------##
##                End XML file                            ##
##--------------------------------------------------------##






if __name__ == "__main__":
    #Write_JSON(*li)
    Write_CSV(*li) 
    Write_EXCEL(*li)   	
		#Write_XML(*li)
    pass	
