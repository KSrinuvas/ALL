#!/usr/bin/python3

import xlsxwriter as xw

workbook = xw.Workbook('sam.xlsx')

worksheet = workbook.add_worksheet('data')

worksheet.write('A1', 'hello')
worksheet.write('A2', 'ok')

workbook.close()




