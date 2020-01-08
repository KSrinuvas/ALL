#!/bin/csh

##------------------------
## outer
##------------------------

set var = "outer"

setenv VAR "outer"

echo "outer : $var $VAR"

csh inner

echo "outer : $var $VAR"


