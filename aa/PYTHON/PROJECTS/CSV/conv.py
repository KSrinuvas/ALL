#!/usr/bin/python3

import json
person_string = '{"name": "Bob", "languages": "English", "numbers": [2, 1.6, null]}'
print (person_string)
# Getting dictionary
person_dict = json.loads(person_string)
# Pretty Printing JSON string back
print (json.dumps(person_dict, indent = 4, sort_keys=True))

print (person_dict)


for k,v in person_dict.items():
	#	print(k,v)
		pass


for key in person_dict.keys():
		print(key)


for val in person_dict.values():
		print(val)


## 

person_json = json.dumps(person_dict)
print (person_json)

