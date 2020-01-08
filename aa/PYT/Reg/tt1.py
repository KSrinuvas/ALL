#!/usr/bin/python3
from datetime import date
aa = input("Enter the data of birth dd/mm/yy : ")
#print (aa)
today = date.today()
Tod = today.strftime("%d/%m/%Y")
#print("Today's date:", Tod)
list1 = aa.split('/')
#print (list1)
list2 = Tod.split('/')
#print (list2)


aa = int(list1[1])


for i in range(aa,13):
	if (i == 1 or i == 2 or i == 3 or i == 4 or i == 5 or i == 6 or i == 7):
		#print (i)
		pass
		if (i%2==0):
			print (i)
			if (i == 0):
				pass
			else:
				pass
		else:
			pass
	else:
		pass	
		#print (i)
		if (i%2 == 0):
			if (i == 0):
				pass
			else:
				pass

c1 = 0
c2 = 0
dd = 0
count = 0

for ii in range(int(list1[-1])+1,int(list2[-1])+1):
	if ii%4 == 0:
		#print (ii)
		pass
		c1 +=1
	else:
		#print (ii)
		pass
		c2 +=1
	count +=1


dd = c1 * 366 + c2 * 365

#print (dd)
#print (count)

#print (dd/count)
