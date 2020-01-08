#!/usr/bin/python3
import re
'''
A website requires the users to input username and password to register. Write a program to check the validity of password input by users.
Following are the criteria for checking the password:
1. At least 1 letter between [a-z]
2. At least 1 number between [0-9]
1. At least 1 letter between [A-Z]
3. At least 1 character from [$#@]
4. Minimum length of transaction password: 6
5. Maximum length of transaction password: 12
'''


'''
pw = input("set a new password : ");

len_pw = len(pw);

print (len_pw);

#if (len_pw >= 6) and  (len_pw <= 12):
if  6 <= len_pw <= 12:
    #print (len_pw);
    if re.search(r'[a-z]+',pw):
        if re.search(r'[0-9]',pw):
            if re.search(r'[A-Z]+',pw):
                if re.search(r'[$#@]+',pw):
                    print (pw); 
else:
    print ("you should enter the min 6 to max 12")


'''




pw = input("set a new password : ");

len_pw = len(pw);

#print (len_pw);

#if (len_pw >= 6) and  (len_pw <= 12):
if  6 <= len_pw <= 12:
    #print (len_pw);
    if re.search(r'[a-z]+',pw):
        if re.search(r'[0-9]',pw):
            if re.search(r'[A-Z]+',pw):
                if re.search(r'[$#@]+',pw):
                    print (pw);
                else:
                    print ("At least 1 character from [$#@]")
            else:
                print ("At least 1 letter between [A-Z]")
        else:
            print ("At least 1 number between [0-9]")
    else:
       print ("At least 1 letter between [a-z]") 
else:
    print ("you should enter the min 6 to max 12 charater ")

