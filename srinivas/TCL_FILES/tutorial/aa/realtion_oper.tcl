#!/usr/bin/tclsh

## Realtional operators 

## ==, !=, > , < , >= , <= 


set a 10

if {$a == 10} { 
		puts "yse the value of a is 10";
} else { 
		puts "no the value of a is not 10";
}



if {$a != 10} {
		puts "the value of a is not a 10";
} else {
		puts "the value of a is 10";
}



if {$a <= 10} { 
		puts "a value is le to 10"
} else {
		puts "a is not le to 10"
}

if {$a >= 10} {
		puts "a value os ge to 10";
} else {
		puts "a is not ge to 10";
}



if {$a < 20} {
		puts "a value is lt of 20";
} else {
		puts "a value is not lt of 20";
}

if {$a > 5} {
		puts "a value is gt of 5"
} else {
		puts "a value is not gt 5"
}


