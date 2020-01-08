#!/bin/csh

##-------------------------------------
## case statement or switch statements 
##-------------------------------------


set aa = 100


switch ($aa) 
		case 10:
				echo value is 10
		breaksw
		case 20:
				echo value is 20
		breaksw
		case 30:
				echo value is 30
		breaksw
		case 40:
				echo value is 40
		breaksw
		case 50:
				echo value is 50
		breaksw
		case 100:
				echo value is 100
		breaksw
		default:
				echo defult case
		breaksw
endsw



: <<'END'
ok
hello
hi
END
