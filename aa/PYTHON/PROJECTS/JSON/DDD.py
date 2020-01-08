#!/usr/bin/python3

import json


## convet the json format dict

with open('/home/srm/aa/nn/XML_TEST/SS.json') as f:
	 data = json.load(f)
print(data)


## convert the dict to json



print("\n\n")

p_json = json.dumps(data)

#print(p_json)



person_dict = {'name': 'Bob',
							'age': 12,
								'children': None}
print (person_dict)

person_json = json.dumps(person_dict)

print (person_json)
