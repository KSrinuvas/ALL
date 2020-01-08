#!/usr/bin/python3
import sys
sys.path.append('/home/srm/aa/PYTHON/PROJECTS/EXCEL')
import EXconv;
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser() 
    parser.add_argument('-Read_EXCEL', help="To Read excel file Enter file name.") 
    parser.add_argument('-Write_XML', help="To write xml file, Enter file name.") 
    parser.add_argument('-Write_JSON', help="To write json file Enter file name.") 
    parser.add_argument('-Write_DBI', help="To write mysql dbi table Enter file name.") 
    parser.add_argument('-Write_CSV', help="To write csv file Enter file name.") 
    args = parser.parse_args()

    if args.Read_EXCEL:
        aa = EXconv.Read_EXCEL(args.Read_EXCEL)
       #print (aa)


    if args.Write_JSON:
        EXconv.Write_JSON(args.Write_JSON,aa)
 
     
    if args.Write_CSV:
        EXconv.Write_CSV(args.Write_CSV,aa)


    if args.Write_DBI:
        EXconv.Write_DBI(args.Write_DBI,aa)


    if args.Write_XML:
       EXconv.Write_XML(args.Write_XML,aa)   


