#!/usr/bin/python3
import re

id = "my mail id is ss255@gmail.com"

## i want to replace gmail to yahoo


id = re.sub(r'(\w+\@)(\w+)(\.com)', r"\g<1>yahoo\g<3>",id)

print (id)
