#!/usr/bin/perl 
use strict;
use warnings;

package AB;

our @aa = (1,2,3);




package CD;

our %hh = ('a'=>10,'b'=>20);


package EF;

our $str = "HELLO WORLD";


package GH;

sub Fun {
		my $aa = 100;
		my $bb = 200;
		return ($aa,$bb);
}



1;
