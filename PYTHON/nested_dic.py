#!/usr/bin/python3



from collections import defaultdict

'''
nested_dict = { 'dictA': {'key_1': 'value_1'},
                'dictB': {'key_2': 'value_2'}}

'''

## s1

nested_dict = {}

nested_dict['dictA'] = {}
nested_dict['dictB'] = {}

nested_dict['dictA']['key_1'] = 'value_1'
nested_dict['dictB']['key_2'] = 'value_2'



print (nested_dict)


## ss2 


dd = defaultdict(dict)

dd['dictA']['key_1'] = 'value_1'
dd['dictB']['key_2'] = 'value_2'

print (dict(dd))
print (nested_dict['dictA']['key_1'])

