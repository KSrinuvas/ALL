#!/usr/bin/python3

aa = [1,2,4,3,2,1,4,5,6]

dit = {}
for i in aa:
  # dit[i] = aa.count(i)
    try:
        dit[i] += 1
    except KeyError as e:
        dit[i] = 1 

print (dit)
