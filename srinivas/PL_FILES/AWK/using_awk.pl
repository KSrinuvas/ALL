#!/usr/bin/perl -w
use strict;

##-----------------------------------------------------------
## Using awk function and get a particular coloumn in a file 
##-----------------------------------------------------------




my $line="1 2 3 4 5 6 7";
## Use echo, not print and escape the $ in $(NF-3)
my $thirdlast=`echo "$line" |awk '{print \$(1)}'`;
print $thirdlast;
