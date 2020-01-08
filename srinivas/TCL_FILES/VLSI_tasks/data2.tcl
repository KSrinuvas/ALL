#!/usr/bin/tclsh

###--------------------------------------------------------------------
## Read the below text file and parse it. Build the hash appropriately. 
###--------------------------------------------------------------------

set fb [open "/home/srm/srinivas/Practice/VLSI_tasks/data.txt" r]

set fa [read $fb]

#array set hash {}

set data [split $fa "\n"]
foreach line $data {
		#puts $line
		if { [regexp -nocase {\#+(\w+)} $line a pri_key] } {
			#	puts $a
			#	puts $pri_key
		} elseif { [regexp -nocase {([a-z].*)\=([1-9]*)} $line ma key val] } {
				#puts "$pri_key => $key ===> $val\n"
				#lappend hash($pri_key,$key) "$val"
				set hash($pri_key,$key) "$val"
		}
}




foreach key1 [array names hash] {
		puts "$key1 : $hash($key1)"
}


