#!/usr/bin/python3

## 

class Switch_case(): 
	def __init__(self):
		pass

	def Check_case_Num(self,dd):
		Switch = {
		10 : "the value is 10",
		1 : "the value is 1",
		20 : "the value is 20",
		30 : "the value is 30"
		}
		return Switch.get(dd,"all case are failuer")
	

	def Check_case_str(self,ee):
		Switch1 = {
			"hello" : "this string is hello",
			"a" : "this is a",
			"b" : "this is b",
			"c" : "this is c"
		}
		return Switch1.get(ee,"all string case are false")


class NEW12(Switch_case):
		def __init__(self):
			pass
		def Switch_case_float(self,num):
			switch_float = {
								1.19 : "the value is 1.19",
								1.59 : "the value is 1.59",
								55.00 : "the value is 55.00",
								66.22 : "ths value is 66.22"
							}
			return switch_float.get(num,"all folating cases are not true")
			
			





aa = Switch_case();

cc = aa.Check_case_Num(10)
print (cc) 

rr = aa.Check_case_str("hello")

print (rr)



GG = NEW12()

FF = GG.Check_case_Num(15)

print (FF)
TT = GG.Check_case_str("hello")

print (TT)



SS = GG.Switch_case_float(66.22)

print (SS)
