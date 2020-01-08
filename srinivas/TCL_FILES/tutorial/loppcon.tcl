#!/usr/bin/tclsh

## loop control statements in strings 

##

set ll {hello hi this is srinu ok};

puts $ll;


##i want only hello and srinu

foreach aa $ll	{
		#puts $aa
		if { [string compare srinu $aa] == 0 || [string compare hello $aa] == 0 }	{
		#		puts "$aa"
		}
}



## i dont want hello and srinu i awant remaning things

foreach bb $ll	{
		if { [string compare hello $bb] == 0 || [string compare srinu $bb] == 0}	{
			 continue;	
		}
		puts "$bb";
}















set list {1 2 3 4 5 6 7 8}

foreach cc $list {
		if {$cc == 8 || $cc == 6}	{
				break;
		}
	#	puts $cc
}



foreach dd $list {
		if {$dd == 8 || $dd == 6 || $dd == 7 || $dd == 5 || $dd == 2} {
				continue
		}
#		puts $dd
}






