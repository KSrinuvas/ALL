#!/usr/bin/perl
use strict;
use warnings;
## 1km = 0.6214mile;
## 1mile = 1.609km
sub conv {
				my $distance = shift;
				my $km = $distance * 0.6214;
				my $mile = $distance * 1.609;
				return ($km,$mile);
}
print "enter the convertion distance in mile and km : ";
my $a = <STDIN>;
chomp($a);
my ($aa,$bb) = conv($a);
print" $a km    =  $aa miles\n"; 
print" $a miles =  $bb km\n"; 
