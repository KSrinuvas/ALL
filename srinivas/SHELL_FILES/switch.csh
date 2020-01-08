#!/bin/csh

set aa = 10

switch ($aa)
		case 5:
				echo it is 5
		breaksw
		case 2:
				echo it is 2
		breaksw
		case 4: 
				echo it is 8
		breaksw
		case 8:
				echo it is 8
		breaksw
		case 10:
				echo it is 10
		breaksw
		default:
				echo it is $aa
		breaksw
endsw
		
