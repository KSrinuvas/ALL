#!/usr/bin/python3
import re

## ovels 

aa = input("Enter the string :")

ll = re.findall(r'[aeiou]',aa,re.I)

a,e,i,o,u = 0,0,0,0,0
dict = {}
for i in ll:
    if re.match(r'a',i,re.I):
        a +=1
        dict['a'] +=1
    if re.match(r'e',i,re.I):
        e +=1
        try:
            dict['a'] +=1
    if re.match(r'i',i,re.I):
        i +=1
        try:
            dict['a'] +=1
    if re.match(r'o',i,re.I):
        o +=1
        try:
            dict['a'] +=1
    if re.match(r'u',i,re.I):
        u +=1
        try:
          :q

        dict['a'] +=1


