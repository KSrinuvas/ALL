#!/usr/bin/python3

class Pets:
	name = "SS";
	age = 20;
	
	def __init__(self,name,age):
		self.name = name;
		self.age = age;

	def Dictp(self,PP):
		return PP.__dict__;

	def Add(self,A,B):
		sum = A +B
		return sum


aa = Pets("robi",5)

print (aa.name);
print (aa.age);


print (aa.__class__.name)
print (aa.__class__.age)


dic = aa.Dictp(aa)

print (dic)

res = aa.Add(10,20);

print (res)
