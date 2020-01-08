#!/usr/bin/tclsh

##------------------------------------------------
## Regexp For Number of Lines,Words and Characters
##------------------------------------------------


## read file file.txt

set file [open "file.txt" r]

while { [gets $file line] >= 0}	{
	#puts "$line"
	#set no_lines [regexp -all {[\n]+} $line]
	 [no_ll $line]
}

puts "No of lines in a file : $no_lines";





proc no_ll {line} {
			set dd [regexp -all {[\n]+}$line]
			puts $dd
}
