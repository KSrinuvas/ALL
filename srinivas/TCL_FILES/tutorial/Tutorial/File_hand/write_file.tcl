#!/usr/bin/tclsh 

##----------------------------
## write a file 
##----------------------------

## file.txt file copy to the ab.txt

set rd [open "file.txt"]

set wr [open "ab.txt" w]

while { [gets $rd data] >= 0 } {
		if { [regexp -nocase {^$} $data] } {
					continue; ## skip the empty lines in file 
		}
		puts $wr "$data";
}


close $rd

close $wr

