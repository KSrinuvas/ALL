#!/usr/bin/perl -w
use strict; 
# A program that uses the equality-comparison operator to compare two numbers entered at the keyboard.
print "Enter the no1 : ";
my $a = <STDIN>;
chomp($a);
print "Enter the no2 : ";
my $b = <STDIN>;
chomp($b);
if ($a == $b)	{
		print"\$a and \$b both the values are equal\n";
} else {
		print"\$a and \$b both the values are not equal\n";
}
print "this is the last line of the program\n";
