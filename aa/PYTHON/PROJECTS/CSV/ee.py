#!/usr/bin/python3

import xlsxwriter
workbook = xlsxwriter.Workbook('hello.xlsx')
worksheet = workbook.add_worksheet()




format = workbook.add_format({'color' : 'red'})
#worksheet.write('A1', 'Hello world',format)





cc  = [['job_profile', 'employee_name', 'email'], ['Sr. Developer', 'James', 'james@gmail.com'], ['Project Lead', 'Smith', 'Smith@gmail.com']]






def NN(*pp):
    for a in pp:
        row = 0
        for b in a:
            col = 0
            for c in b: 
#               print (c) 
                if (row == 0):
                   #print (row,col)
                    worksheet.write(row,col,c,format)
                    col +=1
                    continue
                print (row,col)
                worksheet.write(row,col,c)
                col +=1
            row +=1

NN(cc)

workbook.close()
   




def D(lp):
    print(lp)
    print(type(lp))
    hd = lp.pop(0)
    for j in range(len(hd)):
        print (j)
        for i in lp:
           #print (i)
            for k in i:
                print (k)
            print("\n")			


list = [12,13,14]
D([['name','age','salary'],['ss',20,'25k'],['yy',40,'60k']])







