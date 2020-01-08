#!/bin/csh


##-----------------------------
## "source" Other script
##-----------------------------

set var = "outer"
setenv VAR "outer"

echo "outer : $var $VAR"

source inner

ECHO "OUTER : $VAR $var"


