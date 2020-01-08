#!/usr/bin/tclsh

##---------------------------------------------
## Read the text file and count the the and is 
##---------------------------------------------


#PARSING RECORD-ORIENTED FILES
#Parse a Unix /etc/passwd file, which consists of one entry per line, with each line consisting of a colon-separated list of fields:
## Read the file

set fid [open "file.txt" r]
set content [read $fid]
close $fid

## Split into records on newlines
set records [split $content "\n"]



set count 0
## Iterate over the records
foreach rec $records {
		#puts $rec
		if { [regexp -nocase {^$} $rec abc] }	{ 
				continue; 
		} elseif { [regexp -nocase {^\#.+} $rec cde] }	{
				#puts $rec;
				continue;
		} 
		#puts $rec;
		## remove white spaces in a lines 
		set spt [split $rec " "]
		foreach gg $spt	{
				if { [regexp -all {^ *$} $gg jj] } {
						#puts "$gg :1"
						 continue;
				}
				#puts $gg
				if { [regexp -nocase {rabbit} $gg kk] }	{
							puts $kk
				}
		}
}

