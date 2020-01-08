#!/usr/bin/tclsh

## 

set manpower 10;   ## manpower and Manpower are two different identifiers 
set Manpower 100;

puts "\$manpower is : $manpower";

puts "\$Manpower is : $Manpower";



after [expr 5*1000]

puts "hello";

