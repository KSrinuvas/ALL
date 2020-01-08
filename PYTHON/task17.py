#!/usr/bin/python3
import re
'''
Write a program that computes the net amount of a bank account based a transaction log from console input. The transaction log format is shown as following:
D 100
W 200
'''

Deposite = 0
Withdraw = 0
ll = []
while True:
    a = input()
    ll = a.split()
    if a:
        if re.match(r'^D',a,re.I):
            Deposite += int(ll[1])
        elif re.match(r'^W',a,re.I):
            if Deposite < Withdraw:
                print ("you dont have a insuficent balance in your account")
            else:
                Withdraw += int(ll[1])
    else:
        break

if Deposite > Withdraw:
    balance = Deposite - Withdraw
    print ("Remaning balance is :", balance)
else:
    print ("you dont have a insuficent balance in your account")
