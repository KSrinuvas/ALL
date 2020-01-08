#!/usr/bin/perl
use strict;
use warnings;

use feature 'state';

## finfd out the avg value using state varible 
my $b = [1,2,3,4,5,6];

{
 	state $a = 0;
	state $ss = 0;
	state $avg = 0;
	sub Print_avg {
		$ss +=$_;
		$a++;
	}
}

foreach (@{$b}) {
	Print_avg();
}
