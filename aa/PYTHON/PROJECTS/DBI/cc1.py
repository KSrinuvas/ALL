#!/usr/bin/python3

import pymysql
import xlsxwriter



head = []
list = []
# Open database connection
db = pymysql.connect("localhost","root","srm","FTOS" )

# prepare a cursor object using cursor() method
cursor = db.cursor()

# Prepare SQL query to INSERT a record into the database.
sql = "SELECT * FROM DATA"

try:
		
	# Execute the SQL command
	cursor.execute(sql)
	# Fetch all the rows in a list of lists.
	for i in cursor.description:	
		print(i[0])
		head.append(i[0])
	results = cursor.fetchall()
	for row in results:
			print(row)
			list.append(row)
except:
	print ("Error: unable to fetch data")

# disconnect from server



#print (list)

print (head)


###-------------------------------------------------------###
###                    Write Excel                        ###
###-------------------------------------------------------###












