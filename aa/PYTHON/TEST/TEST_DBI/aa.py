#!/usr/bin/python3
import sys
import argparse
sys.path.append('/home/srm/aa/PYTHON/PROJECTS/DBI')
import DBconv 

if __name__ == "__main__":
    parser = argparse.ArgumentParser() 
    parser.add_argument('-table', help="Enter the mysql database table name.")
    parser.add_argument('-Write_CSV', help="To write csv file name Enter file name.")
    parser.add_argument('-Write_EXCEL', help="To Write excel file Enter file name.")
    parser.add_argument('-Write_JSON', help="To write json file Enter file name.")
    parser.add_argument('-Write_XML', help="To write xml file Enter file name.")
    args = parser.parse_args()
 
    if args.table:
        aa = DBconv.Read_DBI(args.table)  
        print (aa)

    if args.Write_JSON:
        DBconv.Write_JSON(args.Write_JSON,aa)


    if args.Write_CSV:
        DBconv.Write_CSV(args.Write_CSV,aa)


    if args.Write_EXCEL:
       #print(args.Write_EXCEL)
        DBconv.Write_EXCEL(args.Write_EXCEL,aa)
    

    if args.Write_XML:
        DBconv.Write_XML(args.Write_XML,aa)

