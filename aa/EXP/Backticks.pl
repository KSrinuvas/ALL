#!/usr/bin/perl -w
use strict;

##----------------------------------------------------##
##--      Backticks to run the commands             --##
##----------------------------------------------------##

## backticks is used for to capture the standerd output 



## in list context it returns the output as a list of lines 

my @lines = qx/pwd/;


## in scalr context it returns the output as one string 

my $output = qx/ls -l/;

print "@lines";

#print "$output";



my @array = split(/\s{2,}/,$output);

foreach (@array) {
		print "$_";
}



system("/home/srm/aa/EXP/AA.pl");
 
