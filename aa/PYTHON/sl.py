
import xlsxwriter as vb

#workbook = xlsxwriter.Workbook('hello.xlsx')
workbook = vb.Workbook('he.xlsx')
worksheet = workbook.add_worksheet()

worksheet.write('A1', 'Hello world')
worksheet.write('A2', 'Hello world')

workbook.close()
