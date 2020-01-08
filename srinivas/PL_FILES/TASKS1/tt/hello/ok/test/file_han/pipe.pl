#!/usr/bin/perl -w
use strict;

#Write a program that takes the values on the command line, adds them together, and prints the result.
my $sum = 0;
foreach (@ARGV) {
		$sum +=$_;
		
}

print"$sum\n";



### find the avg 
my $l = @ARGV;
my $ret =avg($sum,$l);
sub avg {
			my $avg = $_[0]/$_[1];
			return $avg;
}

print"AVERAGE : $ret\n";

