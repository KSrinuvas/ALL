#!/usr/bin/perl -w 
use strict;

##Write a Perl program that reads in a number, multiplies it by 2, and prints the result.

print"Enter the no: ";
my $a = <STDIN>;
chomp($a);
print "multiples it by 2 :",$a*2,"\n";
