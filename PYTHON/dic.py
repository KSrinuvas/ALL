#!/usr/bin/python3

from collections import defaultdict

dd = defaultdict(list)


dd['hh'] = [1,2,3,4]

print (list(dd))

kk = defaultdict(dict)

kk['dic'] = {'a': 10,'b': 20}

print (dict(kk))
