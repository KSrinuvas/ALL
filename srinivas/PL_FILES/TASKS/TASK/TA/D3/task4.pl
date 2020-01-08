#!/usr/bin/perl -w
use strict;
#Listing 4.5. A program that reads input lines and concatenates them.

print "Enter your input type as empty to quit : ";
my $input = <STDIN>;	
chomp($input);

my $a = "";

while ($input ne "")	{
		$a.=$input;
		$input = <STDIN>;
		chomp($input);
}

print"$a\n";




