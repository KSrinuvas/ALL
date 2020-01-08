#!/usr/bin/python3

import re

i = "123.14.55.66"

re.sub(r'(\d+)(\.\d+\.\d+\)' r"\2 \1 \4 \3",i)

print (i)
