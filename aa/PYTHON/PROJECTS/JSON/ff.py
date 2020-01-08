#!/usr/bin/python3


aa = {'employee_details': [{'employee_name': 'James', 'email': 'james@gmail.com', 'job_profile': 'Sr. Developer'}, {'employee_name': 'Smith', 'email': 'Smith@gmail.com', 'job_profile': 'Project Lead'}]}




def Write_EXCEL():
    workbook = xlsxwriter.Workbook('file1.xlsx')
    worksheet = workbook.add_worksheet()
    format = workbook.add_format({'color' : 'red'}) 
    for k,v in aa.items():
        print (v)
        row = 1
        for p in v: 
            col = 0
            for i in sorted (p.keys()) :  
                 worksheet.write(row,col,p[i])
                 worksheet.write(0,col,i,format)
                 col +=1
            row += 1
    workbook.close()

