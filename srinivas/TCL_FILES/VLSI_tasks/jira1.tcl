
##----------------------------------------------------------------------
## Read the below test file and parse it. Build the hash appropriately
##----------------------------------------------------------------------

set file "/home/srm/srinivas/Practice/VLSI_tasks/jj.txt";

## read file 

set fh [open "$file" r]

#array set hash {}

set str ""
set kk 1
while { [gets $fh line] >=0 } {
	#	puts $line
		if { [regexp -nocase {([a-z].*)\=(.?[a-z].*)} $line a b c] }	{
				set hash($kk,$b) "$c"
				incr kk
		} else {
				append str "$line\n"
		} 
}


set size [array size hash]

#puts $size;


## to remove the newline charater in a string
set str [string trimright $str \n]

if { [info exists hash($size,description)] }	{
#		puts $str
		append hash($size,description) "\n$str"
}



foreach name [lsort [array names hash]] {
		#puts "$name : $hash($name)"
		if { [regexp -nocase {[1-9]+\,([a-z].*)} $name aa key] }	{
				puts "$key=$hash($name)";
		}
}



#close file handelar 
close $fh;
