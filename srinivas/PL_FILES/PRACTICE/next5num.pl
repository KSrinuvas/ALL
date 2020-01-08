#!/usr/bin/perl -w
use strict;

## program will print the next five numbers after the number typed 
print"Enter the no : ";
my $input = <STDIN>;
chomp($input);

$input +=1; ## start with next number 

my $teriminate = $input + 5; # we want loop is five times 

until ($input == $teriminate)	{
		print"$input\n";
		$input++; # increment
}
 
