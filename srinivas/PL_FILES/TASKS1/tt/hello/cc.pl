#!/usr/bin/perl
use strict;
use warnings;

my $str = "this is srinivas from kakinada";

print "Enter the regular expersion: ";

my $pattern = <STDIN>;
chomp($pattern);
if ($str =~ $pattern)	{
		print"$&\n";
		print"\$1 is $1\n" if !defined $1;
		print"\$2 is $2\n" if !defined $2; 
		print"\$3 name is $3\n" if defined $3;
		print"\$4 is $4\n" if !defined $4;
		print"\$5 city is $5\n" if defined $5;
} else {
		print" $pattern was not found\n";
}


