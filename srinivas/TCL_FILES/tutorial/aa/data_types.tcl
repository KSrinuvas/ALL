#!/usr/bin/tclsh 

## data types in a tcl

set no 10;      ## intiger number 
set no1 10.5;   ## floating number
set str "hello";  ## string 


puts "integer is no is : $no";
puts "floating point no is : $no1";
puts "string is : $str";



## sum of integer and floating point no 
puts [expr $no+$no1]

## sum of both are integers 
puts [expr int($no+$no1)]

## sum of both are floating point 
puts [expr $no+$no1]

## string representations

set str1 "hello"
#puts $str1;



set myvar "hello world";   # this is string 
puts $myvar;




set myvar {hello world};  #use {} braces is list 
#puts $myvar;


foreach aa $myvar {
		puts $aa;
}



set list {1 2 3 4 5};

puts $list;

###anothe way to create a list 

set l1 [list 1 2 3 4 5];

puts $l1;


## first index no in a lists 
puts [lindex $l1 0];
puts [lindex $list 0];


## size of the lists 
puts [llength $l1];
puts [llength $list];

## append in a lists 

puts [lappend l1 6];
lappend list 6;

puts $l1;
puts $list;



## linsert




## Associative array 

set marks(english) 95
set marks(social) 68
set marks(mathematics) 98
set marks(hindi) 75

## accessing the associative array 

foreach name [array names marks] {
		puts "$name => $marks($name)";
}


## set file handler 

set myfile [open "a1.tcl" r];


set fb [read $myfile];

#puts $fb;

close $myfile;






