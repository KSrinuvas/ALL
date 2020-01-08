#!/usr/bin/tclsh 

##---------------------------------------------------
## read the file and build the hash in dynamic way 
##---------------------------------------------------

## read file 

#set fb (open "/home/srm/srinivas/Practice/VLSI_tasks/data.txt" r);

set fb "/home/srm/srinivas/Practice/VLSI_tasks/data.txt";



set fp [open "$fb" r]

while { [gets $fp data] >= 0 } {
  # puts $data
   if [	regexp -nocase {(^\#+)([a-z]*)} $data m1 m2 m3]  {
  		#puts $m1
			#puts $m2
			#puts $m3
	} elseif [ regexp -nocase {([a-z].*)\=([1-9]*)} $data k1 k2 k3] {
			#puts $k1
			#puts $k2
			#puts $k3
			#dict lappend subdict "$m3$k2" "$k3"
}


close $fp





