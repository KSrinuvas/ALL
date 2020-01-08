#!/usr/bin/perl 
use strict;

BEGIN {
		unshift(@INC,'/home/srm/aa/mod/mod1/');
		require 'Rr.pl'
}



## package AB
my @arr = @AB::aa;

print"@arr\n";




## package CD
my %hash = %CD::hh;

while (my ($k,$v) = each (%hash) ) {
		print "$k => $v\n";
}




## package EF
my $st = $EF::str;

print "$st\n";




## package GH;
my ($s1,$s2) = &GH::Fun();

print "$s1\n";
print "$s2\n";

