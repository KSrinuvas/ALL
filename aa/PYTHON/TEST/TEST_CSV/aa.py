#!/usr/bin/python3
import sys
sys.path.append('/home/srm/aa/PYTHON/PROJECTS/CSV')
import CScon
import argparse

##--------------------------------------------------------------------------------## 
##           ----------------  Description ---------------------                  ##
##      'Cscon' module used to convert the JSON,XML,Mysql,EXCEL formats           ##
##--------------------------------------------------------------------------------##

if __name__ == "__main__":
    parser = argparse.ArgumentParser() 
    parser.add_argument('-csv_read', help="To read csv file, Enter file name.") 
    parser.add_argument('-Write_EXCEL', help="To Write excel file Enter file name.") 
    parser.add_argument('-Write_JSON', help="To write json file Enter file name.") 
    parser.add_argument('-Write_DBI', help="To write mysql dbi table Enter file name.") 
    parser.add_argument('-Write_XML', help="To write xml file Enter file name.") 
    args = parser.parse_args()

    if args.csv_read:
       aa = CScon.Read_CSV(args.csv_read)   
      #print(aa)

    if args.Write_JSON:
        CScon.Write_JSON(args.Write_JSON,aa)

    if args.Write_EXCEL:
        CScon.Write_EXCEL(args.Write_EXCEL,aa)
   
    if args.Write_DBI:
        CScon.Write_DBI(args.Write_DBI,aa)
 
    if args.Write_XML:
        CScon.Write_XML(args.Write_XML,aa)
   
##=================================================================================## 
