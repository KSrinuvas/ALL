#!/usr/bin/python3
import sys
sys.path.append('/home/srm/aa/PYTHON/PROJECTS/JSON')
import Jsoncon
import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser() 
    parser.add_argument('-Read_JSON', help="To read json file, Enter file name.") 
    parser.add_argument('-Write_EXCEL', help="To Write excel file Enter file name.") 
    parser.add_argument('-Write_CSV', help="To write csv file Enter file name.") 
    parser.add_argument('-Write_DBI', help="To write mysql dbi table Enter file name.") 
    parser.add_argument('-Write_XML', help="To write xml file Enter file name.") 
    args = parser.parse_args()


    if args.Read_JSON:
       aa = Jsoncon.Read_JSON(args.Read_JSON)
       print(aa)

    if args.Write_CSV:
        Jsoncon.Write_CSV(args.Write_CSV,aa)

    if args.Write_EXCEL:
        Jsoncon.Write_EXCEL(args.Write_EXCEL,aa)
   

    if args.Write_DBI:
        Jsoncon.Write_DBI(args.Write_DBI,aa)

    if args.Write_XML:
        Jsoncon.Write_XML(args.Write_XML,aa)
        

