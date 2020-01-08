#!/usr/bin/python3
import xlsxwriter

#To do that we can start with a small program like the following:

# Create a workbook and add a worksheet.
workbook = xlsxwriter.Workbook('Expenses01.xlsx')
worksheet = workbook.add_worksheet()
worksheet1 = workbook.add_worksheet('new')
# Some data we want to write to the worksheet.
expenses = (
							['Rent', 1000],
							['Gas', 100],
							['Food', 300],
							['Gym', 50],
					)
# Start from the first cell. Rows and columns are zero indexed.
row = 0
col = 0
# Iterate over the data and write it out row by row.
for item, cost in (expenses):
		worksheet.write(row, col, item)
		worksheet.write(row, col + 1, cost)
		row += 1
#Write a total using a formula.
#worksheet.write(row, 0, 'Total')
#worksheet.write(row, 1, '=SUM(B1:B4)')




cc = [['job_profile', 'employee_name', 'email'], ['Sr. Developer', 'James', 'james@gmail.com'], ['Project Lead', 'Smith', 'Smith@gmail.com']]



def ss(ab):
    row = 0
    for i in ab:
        col = 0
        for gg in i:
            print(gg)
            worksheet1.write(row,col,gg)
            col +=1
        row +=1




ss(cc)



workbook.close()




