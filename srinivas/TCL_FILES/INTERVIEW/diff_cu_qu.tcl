#!/usr/bin/tclsh

set a 10

set b 20

puts {$a $b 10 20};   ## $a and $b substitution doesn't occured 

puts "$a $b 10 20";  ## $a and $b substitution occured
