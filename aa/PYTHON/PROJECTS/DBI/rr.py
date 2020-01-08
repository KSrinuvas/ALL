#!/usr/bin/python3

#list1 = ['1', '2', '3']
#str1 = ','.join(list1)
from datetime import datetime
#print(str1)


import csv
with open('innovators.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(("SN", "Name", "Contribution"))
    writer.writerow([1, "Linus Torvalds", "Linux Kernel"])
    writer.writerow([2, "Tim Berners-Lee", "World Wide Web"])
    writer.writerow([3, "Guido van Rossum", "Python Programming"])



aa = (
['Rent', '2013-01-13', 1000],
['Gas', '2013-01-14', 100],
['Food', '2013-01-16', 300],
['Gym', '2013-01-20', 50],
)




for 
