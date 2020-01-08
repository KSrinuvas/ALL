#!/usr/bin/perl 
use strict;
use warnings;
use lib "/home/srm/aa/mod";
use Tt;


my @aa = @Arr::array;
print"@aa\n";


my $s1 = $Sca::string;
print "$s1\n";



my %hh = %Ha::hash;

while( my ($k,$v) = each (%hh) ) {
		print "$k => $v\n";
}




&Fun::Data("END");


