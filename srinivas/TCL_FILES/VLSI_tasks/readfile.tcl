#!/usr/bin/tclsh

##--------------------------------------------------------------
## read the file handler and count the no of rabbits in a file
##--------------------------------------------------------------

## read file file.txt

set file [open "file.txt" r]

while { [gets $file line] >= 0} {
		#puts $line;
		set dd [split $line " "]
		puts $dd
}



## close file handler
close $file
