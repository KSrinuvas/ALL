#!/usr/bin/perl 
use strict;
use warnings;

use Tt;


## Arr package
my @aa = @Arr::array;

print "@aa\n";



## string 
my $ss = @Sca::string;

print"$ss\n";


## hash 

my %hh = %Ha::hash;

while (my ($k,$v) = each (%hh) ) {
		print "$k => $v\n";
}



## funct


&Fun::Data("END");
