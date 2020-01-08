#!/usr/bin/perl -w
use strict;

# Write a Perl program that uses the until statement to print out the first 10 numbers in descending order (10-1).

my $i = 1;

until ($i > 10) {
		print "first 10 in descending order (10 -1) : $i\n";
		$i++;
}
print "until loop is end\n";

