#!/usr/bin/perl -w 
use strict;

#Write a Perl program that reads in two numbers and does the following:
   # 1 it prints Error: can't divide by zero if the second number is 0.
print"no1 : ";
my $a = <STDIN>;
print"no2 : ";
my $b = <STDIN>;
chomp($a,$b);

my $div = $a/$b;
print"$div\n";
