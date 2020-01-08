#!/bin/csh

##--------------------
## INNER
##--------------------

if ( ! $?var ) set var = "unknow"
echo "inner : $var $VAR"

set var = "inner"

setenv VAR "inner"

echo "inner : $var $VAR"



