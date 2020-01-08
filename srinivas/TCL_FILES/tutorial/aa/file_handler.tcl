#!/usr/bin/tclsh 

## file handler 

## syntex is :
			
		## [open filename accessmode]

### access Modes build the hash name is Modes

array set Modes {Readfile r Writefile w Appendfile a reading_and_writing r+,w+ all a+};


foreach name [array names Modes] {
		puts "$name mode is -> $Modes($name)";
}
 
## close $filehandlername;  ##file will be closed




## write a file 

set aa file.txt

set filename [open $aa w];

puts $filename "this is a text file";
puts $filename "to write the file";
puts $filename "this file data is very important";


close $filename; #close file handler 






## read a file 


set bb a1.tcl;

set file1 [open $bb r];

set fb [read $file1];

puts $fb;

close $file1; ## close the file handler 




## read a file 

set cc a.pl;

set file2 [open $cc r];

set fd [read $file2]

set fd [split $fd "\n"];

foreach line $fd {
		puts $line;
}

close $file2; ## close the file handelr

 


## using while loop
set file3 [open "file.txt" r];
while { [gets $file3 line1] >= 0} {
	#	puts $line1;
}
close $file3; ## close file handelr





