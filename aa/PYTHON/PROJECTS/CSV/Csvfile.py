#!/usr/bin/python3
import csv
import sys
import json
#file = sys.argv[1];

#print (file)

fobj = open("/home/srm/Readfiles/Emp.csv","r");
fobj2 = open('AA.json','w');
#fobj = open(file,"r");


line1 = fobj.readline()
line1 = line1.strip();
#print (line1)



for line in fobj:
		line = line.strip();
		print(line);



file = '/home/srm/Readfiles/Emp.csv';



reader = csv.DictReader(open(file))


csvfile = open('/home/srm/Readfiles/Emp.csv', 'r')
jsonfile = open('file1.json', 'w')

fieldnames = csvfile.readline()
fieldnames = fieldnames.strip()

reader = csv.DictReader( csvfile, fieldnames)
for row in reader:
    json.dump(row, jsonfile)
    jsonfile.write('\n')




fobj2.write("hello");

fobj2.close()



fobj.close()


