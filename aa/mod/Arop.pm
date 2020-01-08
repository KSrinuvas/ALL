#!/usr/bin/perl 
use strict;
use warnings;

package Arop; 

##----------------------------------------------------##
##-- Simple calculator module ,like (+,-,*,/,%)     --##
##----------------------------------------------------##

print "Calculate the values like +,-,*,/\n";

sub  Cal {
		print "Enter the First value : ";
		my $a = <STDIN>;
		chomp($a);
		print "Enter the operation like (+,-,*,/) : ";
		my $op = <STDIN>;
		chomp($op);
		print "Enter the Second value : ";
		my $b = <STDIN>;
		chomp($b);
		my $res = (eval "$a $op $b");
		print "$a  $op  $b : $res\n";
}

Cal();

1;
