#!/usr/bin/perl -w
use strict;

##-------------------------------##
## FACTORIAL NO OF x 
##-------------------------------##


print"Enter the factorial no of x : ";

my $num = <STDIN>;
chomp($num);

my $i = 1;
my $fact = 1;

while ($i <= $num)	{
		$fact *= $i;
		$i++;
}

print "Fcatorial no of $num is : $fact\n";

