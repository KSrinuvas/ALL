#!/bin/csh

##------------------------------
## SWITCH GREATINGS
##------------------------------

## Usage : greeting name
## examines time of day for greeting





set time = `date`

switch ($time[4])	
		case 0*:
		case 1[01]*:
				set gre=morning  
		breaksw
		case 1[2,7]*:
				set gre=afternoon
		breaksw
		defult:
				set gre=goodnight
		breaksw
endsw

echo Good $gre $1



