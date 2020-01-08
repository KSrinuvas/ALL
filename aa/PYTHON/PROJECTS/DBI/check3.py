#!/usr/bin/python3
import mysql.connector
from mysql.connector import Error


list = [];


try:
    connection = mysql.connector.connect(host='localhost',
                                         database='FTOS',
                                         user='root',
                                         password='srm')

    sql_select_Query = "select * from EMP_DATA12"
    cursor = connection.cursor()
    cursor.execute(sql_select_Query)

    records = cursor.fetchall()
  #  print("Total number of rows in EMP_DATA12 is: ", cursor.rowcount)

#   print("\nPrinting each EMP_DATA12 record")
    for row in records:
				#	print (row)
					list.append(row)

except Error as e:
    print("Error reading data from MySQL table", e)
finally:
    if (connection.is_connected()):
        connection.close()
        cursor.close()
       #print("MySQL connection is closed")



print (list)


