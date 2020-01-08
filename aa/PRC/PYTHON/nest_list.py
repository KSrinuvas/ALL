#!/usr/bin/python3


from collections import defaultdict;

## nested list 
list1 = [[1,2,3],[4,5,6]]

#print (list1[0][2])

## nested dict 

dd = {'key1' : {'a': 10,'b': 20},'key2' : {'c':30,'d': 40}}


#print (dd['key1']['b'])



### update

dd['key1']['b'] = 100;



#print (dd['key1']['b'])

## add new key to dd dict 

dd['key3'] = {}

dd['key3']['ee'] = 80;
dd['key3']['hh'] = 90;


dd['key4'] = defaultdict(dict);



dd['key4'] = {'kk' :1,'ll' :2}



dd['key5'] = defaultdict(list);
 
dd['key5'] = [1,2,3,4];

dd['key5'].append(5);


dd['key5'].extend([10,20]);

dd['key5'].extend([[100,200]]);

dd['key5'].pop(0);

dd['key5'].insert(0,"SSS");

dd['key5'][7].append(2000)


dd['key5'][7][0] = [1,2,3];

dd['key6'] = defaultdict(dict);


dd['key6'] = {'aa' : 10,'bb': 20};




del dd['key6']['aa']


dd['key6']['cc'] = 10000;

kk = dd.keys()

#print (len(kk))


print (dd)




for k,v in dd.items():
	#print ("{} =>  {}".format(k,v));
	if (type(v) == list):
		for i in v:
			if (type(i) == list):
				#print (i)
				for i1 in i:
					if (type(i1) == list):
						for i2 in i1:
							print (i2)
					else:
						print(i1)
			else:
				print (i)
				pass
	elif (type(v) == dict):
		for k1, v1 in v.items():
			print (" {} => {}".format(k1,v1))
			pass
	else:
		pass;






