#!/usr/bin/perl -w
use strict;

##-----------------------------------##
## code referance and dereferance code 
##-----------------------------------##



## $ref is a code reference 

my $ref = sub {
			my $a = shift;
			my $b = shift;
			my $sum = $a + $b;
			print"sum of two values is : $sum\n";
};


### dereferance the code reference and pass the values to the function

&$ref(10,20);


