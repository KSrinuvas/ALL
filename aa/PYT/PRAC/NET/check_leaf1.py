#!/usr/bin/python3
import re



def Leap_years(list1):
    leap_list = []
    for i in list1:
        aa = i/4
        aa = str(aa)
        if re.match(r'\d+\.0',aa):
            leap_list.append(i)
    return leap_list    

li = [2004, 2006, 2012, 2017, 2020, 2024, 2029, 2032, 2036, 2040, 2044, 2005, 2003, 2050, 2090, 2008]

lep = Leap_years(li);

print (lep)
