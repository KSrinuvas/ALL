#!/bin/csh

##--------------------------------
## loop control
##--------------------------------



while (1)
		echo -n "WHAT MORE? "
		set answer = $<
		if ( $answer == "y" ) echo "fine"
		if ( $answer == "n" ) break
		if ( $answer == "c" ) continue
end
echo "now we are at the end"
