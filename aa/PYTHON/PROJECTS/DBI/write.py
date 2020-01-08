#!/usr/bin/python3
import pymysql

#database connection
connection = pymysql.connect(host="localhost", user="root", passwd="srm", database="OK")
cursor = connection.cursor()
# Query for creating table
ArtistTableSql = """CREATE TABLE Artists(
ID INT(20) PRIMARY KEY AUTO_INCREMENT,
NAME  CHAR(20) NOT NULL,
TRACK CHAR(10))"""

cursor.execute(ArtistTableSql)


insert1 = "INSERT INTO Artists(NAME, TRACK) VALUES('Towang', 'Jazz' );"
insert2 = "INSERT INTO Artists(NAME, TRACK) VALUES('Sadduz', 'Rock' );"
#val = [('ss', 'yy'), ('pp', 'qq'), ('zz', 'kk')]
val = [['ss', 'yy'], ['pp', 'qq'], ['zz', 'kk'], [1,2], [4,5], [6,7]]


sql = "INSERT INTO Artists (NAME, TRACK) VALUES (%s, %s)"

cursor.executemany(sql, val)





#executing the quires
cursor.execute(insert1)
cursor.execute(insert2)


#commiting the connection then closing it.
connection.commit()
connection.close()








