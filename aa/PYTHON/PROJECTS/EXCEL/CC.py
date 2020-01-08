#!/usr/bin/python3



# Reading an excel file using Python 
import xlrd 
import csv
import json
import pymysql

  
loc = ("/home/srm/aa/PYTHON/PROJECTS/DBI/AA.xlsx") 
  
# To open Workbook 
wb = xlrd.open_workbook(loc) 
sheet = wb.sheet_by_index(0) 
  
# For row 0 and column 0 
aa = sheet.cell_value(1, 0)   

#print (int(aa))

rr = sheet.nrows

#print (rr)



## to get a excel row data

ll = []
for a in range(sheet.nrows):
    #print(sheet.row_values(a))
    bb = sheet.row_values(a)
    ll.append(bb)

print (ll)


ll2 = []
for b in range(sheet.nrows):
    ll1 = []
    for c in range(sheet.ncols):
      #print(b,c)
      #print(sheet.cell_value(b, c)) 
       ab = sheet.cell_value(b, c)
       if type(ab) == float:
           ab = int(ab)
           ll1.append(ab)
          #print (ab)
       else:
           ll1.append(ab)
          #print (ab)
     # print (ab)
    #print (ll1)
    ll2.append(ll1)
#print(sheet.cell_value(i, 0)) 


print (ll2)



##---------------------------------------------------------##
##              Write json file                            ##
##---------------------------------------------------------##



def Write_JSON(args):
    wr_json = open("AA.json","w")
 #  print(args)
 #  print("\n\n")
    p_json = json.dumps(args)
    wr_json.write(p_json)
 #  print(p_json)

    wr_json.close()



##---------------------------------------------------------##
##                     Write_CSV file                      ##
##---------------------------------------------------------##




def Write_CSV(args):
    file = open("AA.csv","w")
    wr_csv = csv.writer(file)
    for i in (args):
  #     print(i)
        wr_csv.writerow(i)
    file.close()


##---------------------------------------------------------##
##                  End CSV file                           ##
##---------------------------------------------------------##






##----------------------------------------------------------##
##                  Write DBI                               ##
##----------------------------------------------------------##


def Write_DBI():
    courser = pymsql.conncet('localhost','root','srm','OK')
    cursor = connection.cursor()

    print("conncect dbi")
    TableSql = """CREATE TABLE Artists12(
ID INT(20) PRIMARY KEY AUTO_INCREMENT,
NAME  CHAR(20) NOT NULL,
TRACK CHAR(10))"""
    courser.execute(TableSql)
















if __name__ == "__main__":
    Write_CSV(ll2)
    Write_JSON(ll2)
#   Write_DBI()

