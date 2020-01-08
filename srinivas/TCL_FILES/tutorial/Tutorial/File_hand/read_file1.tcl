#!/usr/bin/tclsh 

##----------------------
## read file 'file.txt'
##----------------------

set aa file.txt

set file [open "$aa" r]

while { [gets $file data] >= 0 } {
		#puts $data
		if { [regexp -nocase {^$} $data] }	{
				continue
		}
		puts $data
}

