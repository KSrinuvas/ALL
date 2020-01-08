
##----------------------------------------------------------------------
## Read the below test file and parse it. Build the hash appropriately
##----------------------------------------------------------------------

set file "/home/srm/srinivas/Practice/VLSI_tasks/jj.txt";

## read file 

set fh [open "$file" r]

#array set hash {}

set str ""

while { [gets $fh line] >=0 } {
	#	puts $line
		if { [regexp -nocase {([a-z].*)\=(.?[a-z].*)} $line a b c] }	{
				set hash($b) "$c"
		} else {
			#	puts $line
				append str "$line\n"
		} 
}

#puts "$hash"

foreach key [array names hash]	{
#		puts "$key => $hash($key)"
}

#puts $hash(description)

## to remove the newline charater in a string

set str [string trimright $str \n]


if { [info exists hash(description)] }	{
	#	puts $str
		append hash(description) "\n$str"
}

foreach key [array names hash] {
		puts "$key=$hash($key)"
}


#close file handelar 
close $fh;
