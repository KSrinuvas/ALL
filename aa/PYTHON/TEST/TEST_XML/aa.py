#!/usr/bin/python3
import sys
sys.path.append('/home/srm/aa/PYTHON/PROJECTS/XML')
import Xmlconv;
import argparse



if __name__ == "__main__":
    parser = argparse.ArgumentParser() 
    parser.add_argument('-XML_read', help="To read xml file, Enter file name.") 
    parser.add_argument('-Write_EXCEL', help="To Write excel file Enter file name.") 
    parser.add_argument('-Write_JSON', help="To write json file Enter file name.") 
    parser.add_argument('-Write_DBI', help="To write mysql dbi table Enter file name.") 
    parser.add_argument('-Write_CSV', help="To write csv file Enter file name.") 
    args = parser.parse_args()



    if args.XML_read:
       aa = Xmlconv.parseXML(args.XML_read)   
      #print(aa)


    if args.Write_EXCEL:
        Xmlconv.Write_EXCEL(args.Write_EXCEL,aa)

    if args.Write_JSON:
        Xmlconv.Write_JSON(args.Write_JSON,aa)
 
     
    if args.Write_CSV:
        Xmlconv.Write_CSV(args.Write_CSV,aa)

    if args.Write_DBI:
        Xmlconv.Write_DBI(args.Write_DBI,aa)





