#!/usr/bin/tclsh

###----------------------------------------------------------------------
## Read the below text file parse it. Build the dictionary appropriately.
###----------------------------------------------------------------------

set fb [open "/home/srm/srinivas/Practice/VLSI_tasks/data.txt" r]

set fa [read $fb]

set data [split $fa "\n"]
foreach line $data {
		#puts $line
		if { [regexp -nocase {\#+([a-z]+)} $line a pri_key] } {
			#	puts $a
			#	puts $pri_key
		} elseif { [regexp -nocase {([a-z].*)\=([1-9].*)} $line ma key val] } {
				#puts "$pri_key => $key ===> $val\n"
				dict set myDict $pri_key $key $val
	}
}
#puts "$myDict"


## write a file da1.txt
set wf [open "da1.txt" w]


foreach pri_key [dict keys $myDict]	{
		puts "##$pri_key";
		puts $wf "##$pri_key"
		dict for {k1 v1} [dict get $myDict $pri_key] { 
				puts "$k1=$v1"
				puts $wf "$k1=$v1"
		} 
}


## close write file
close $wf
## close read file
close $fb


