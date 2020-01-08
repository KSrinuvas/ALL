#!/usr/bin/python3
import json
import csv
import xlsxwriter



##---------------------------------------------------------##
##                Read Json file                           ##
##---------------------------------------------------------##

def Read_JSON(file):
    with open(file) as f:
        data = json.load(f)
#       print (data)
    return data

















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




      


ll1 = []
for k,v in aa.items():
    for p in v:
        kk = []
        hh = []
        for i in sorted (p.keys()) :
            print (i,p[i])
            kk.append(p[i])
            hh.append(i)
        ll1.append(kk)        
    ll1.insert(0,hh)
print (ll1)
            



















