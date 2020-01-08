#!/usr/bin/python3
import re;
import sys;

ip =  "ip address is 162.66.02.01";


aa = re.sub(r'(\d+)(\.\d+\.\d+\.\d+)',sys.argv[1] + r'\g<2>' ,ip);

print (aa);



mail = "my mail id is ss2244@gmail.com";

print (mail);
mail = re.sub(r'(\w+\@)(\w+)(\.com)', r'\g<1>' + sys.argv[2] + r'\g<3>', mail);

print (mail);
