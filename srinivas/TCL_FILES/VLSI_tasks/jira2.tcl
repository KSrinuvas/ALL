#!/usr/bin/tclsh

set file "/home/srm/srinivas/Practice/VLSI_tasks/jj.txt";

## read file 

set fh [open "$file" r]
set str "" 
while { [gets $fh line] >=0 } {
		if { [regexp -nocase {([a-z].*)\=(.?[a-z].*)} $line a b c] }	{
				#set hash($b) "$c"
				 dict set myDict $b $c 
		} else {
				append str "$line\n"
		}
}
#puts $str
set str [string trimright $str \n]
#puts $str

if {[dict exists $myDict description]} {
		dict append myDict description "\n$str"
}

dict for {key val} $myDict {
		puts "$key=$val"
}


#close file handelar 
close $fh;

