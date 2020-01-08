#!/bin/csh

##-----------------------------------------------------------------------------
# Trapping signal
##-----------------------------------------------------------------------------

: <<END

oninter labe 

		execution continues at label if interrupt signal is receivd.

oninter -

		ignore interrupt signal.

oninter

		restore previous interrupt signal behavior.


##-------------------------------------------------------------------------------

END

echo "hello"

: <<END

oninter label

while (1)
		echo "."
		sleep 1
end

label:
		echo "single received"

END   ## comment












