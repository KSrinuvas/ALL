#!/usr/bin/tclsh


## write file 

set fw [open "aa.txt" "w"];

puts $fw "hello";

puts $fw "ok";


puts $fw "my mail id is ss12@gmail.com";


close $fw;



## read file 

set fr [open "aa.txt" "r"];

set read_data [read $fr]


set read_data [string trimright $read_data \n]


#puts $read_data;

seek $fr 0;

while {[gets $fr data] >= 0} {
	#puts $data;
	if {[regexp -nocase {([a-z,0-9]*\@[a-z]*\.[a-z]*)} $data aa bb]} {
		puts $aa
	}
}


close $fr;








