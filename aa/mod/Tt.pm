#!/usr/bin/perl 
use strict;
use warnings;

package Arr;

our @array = (1..5);





package Sca;

our $string = "HELLO WORLD";



package Ha;

our %hash = ('a'=>10,'b'=>20,'c'=>30); 



package Fun;



sub Data {
		my $abc = shift;
		print "$abc\n";
}


Data("START");







