#!/usr/bin/python3

import csv  
import json  
  
# Open the CSV  
f = open( '/home/srm/Readfiles/Emp.csv', 'rU' ) 

##---------------------------------------------------##
##                  WRITE JSON                       ##
##---------------------------------------------------##

line1 = f.readline()
line1 = line1.strip();
print (line1)

text = tuple(line1.split(','))
print (text)




''' 
# Change each fieldname to the appropriate field name. I know, so difficult.  
#reader = csv.DictReader( f, fieldnames = ( "fieldname0","fieldname1","fieldname2","fieldname3" ))  
reader = csv.DictReader( f, fieldnames = text ) 
# Parse the CSV into JSON  
out = json.dumps( [ row for row in reader ] )  
# Save the JSON  
f = open( 'parsed.json', 'w')  
f.write(out)  
print ("JSON saved") 



##-----------------------------------------------------##
##                   END JSON FILE                     ## 
##-----------------------------------------------------##







##------------------------------------------------------##
##                   WRITE EXCEL FILE                   ## 
##------------------------------------------------------##


import pandas as pd

read_file = pd.read_csv ('File name.csv')
read_file.to_excel ('File name.xlsx', index = None, header=True)







'''










 
