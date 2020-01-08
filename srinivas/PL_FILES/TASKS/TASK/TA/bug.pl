#!/usr/bin/perl -w
use strict;
print "Enter the value : ";
my $value = <STDIN>;
chomp($value);
if ($value == 17) {
		print ("You typed the number 17.\n");
} else {
		print ("You did not type the number 17.\n");
}

