#!/usr/bin/python3

import json

import csv

import xlsxwriter



employee_data = '{"employee_details":[{"employee_name": "James", "email": "james@gmail.com", "job_profile": "Sr. Developer"},{"employee_name": "Smith", "email": "Smith@gmail.com", "job_profile": "Project Lead"}]}'

##---------------------------------------------------------##
##                Read Json file                           ##
##---------------------------------------------------------##

def Read_JSON(file):
    with open(file) as f:
        data = json.load(f)
#       print (data)
    return data


##=========================================================##






##---------------------------------------------------------##
##               Write_CSV file 
##---------------------------------------------------------##

'''

employee_parsed = json.loads(employee_data)

#print (employee_parsed)



emp_data = employee_parsed['employee_details']

# open a file for writing

employ_data = open('EmployData.csv', 'w')

# create the csv writer object

csvwriter = csv.writer(employ_data)

count = 0

for emp in emp_data:

      if count == 0:

             header = emp.keys()
#            print (header)
             csvwriter.writerow(header)

             count += 1

      csvwriter.writerow(emp.values())

employ_data.close()







##--------------------------------------------------------------##
##                    Write Excel 
##--------------------------------------------------------------##

def Write_EXCEL():
    workbook = xlsxwriter.Workbook('file.xlsx')
    worksheet = workbook.add_worksheet()
    format = workbook.add_format({'color' : 'red'}) 
    for k,v in aa.items():
       #print (v)
        row = 1 
        for p in v:
            col = 0
            for i in sorted (p.keys()) :  
                 worksheet.write(row,col,p[i])
                 worksheet.write(0,col,i,format)
                 col +=1
            row += 1
    workbook.close()


'''

##=============================================================##





























if __name__ == "__main__":
    aa = Read_JSON('emp.json')
    print (aa)

    workbook = xlsxwriter.Workbook('hh.xlsx')
    worksheet = workbook.add_worksheet()
    format = workbook.add_format({'color' : 'red'}) 
    for k,v in aa.items():
       #print (v)
        row = 1 
        for p in v:
            col = 0
            for i in sorted (p.keys()) :  
                 worksheet.write(row,col,p[i])
                 worksheet.write(0,col,i,format)
                 col +=1
            row += 1
    workbook.close()




























'''


def Write_EXCEL(file,*args):
    workbook = xlsxwriter.Workbook(file)
    worksheet = workbook.add_worksheet()
    format = workbook.add_format({'color' : 'red'}) 
#   print(args)
    for aa in args:
        row = 0
        for bb in aa:
            col = 0
            for cc in bb:
                if (row == 0):
          #         print (row,col)
                    worksheet.write(row,col,cc,format)
                    col +=1
                    continue
                worksheet.write(row,col,cc)
                #print (row,col)
                col +=1
            row +=1        

    workbook.close()


'''
