#!/usr/bin/tclsh

##-------------------------------------------------------------------------
## Set ip address as 10.30.20.1 write a script to replace the 30 with 40?
##-------------------------------------------------------------------------


set ip 10.30.20.1

set data $ip;



#regsub 30 $data 40 a puts $a this will give you the replaced string

regsub -all {30} $data {40} data
puts $data;



#string replace $data 3 4 40 this also will give you the replaced

set dd [string replace $data 3 4 40];
puts $dd;

