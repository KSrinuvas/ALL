#!/usr/bin/perl -w
use strict;
#Write a program that asks for a number and keeps trying until you enter the number 47. At that point, it prints Correct! and rings a bell.
print "Enter the no : ";
my $inp = <STDIN>;
chomp($inp);
my $no = 47;

until ($inp == $no)	{
			print"keeps trying!\n";
			$inp = <STDIN>;
		  chomp($inp);
}
print"print the correct! \a\n";


