#!/usr/bin/tclsh

## read file 

set fp [open "data.txt" r];

## while loop 

while {[gets $fp data] >= 0 }	{
		puts $data;
}

close $fp;

if 0 {
#regexp {([A-Z,a-z].*)\=([0-9]*)} "Equivalence Check=26176" a b c
}

