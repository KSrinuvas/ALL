#!/usr/bin/perl -w
use strict;

## This script accepts an integer as a command line argument
## calculate the factorial no

my $fact = 1;
my $no = $ARGV[0];

for (my $i = 1; $i <= $no;$i++)	{
		$fact *=$i;
}

print "factorial of $no is $fact\n";


my $fa = 1;
for (1..$ARGV[0])	{
		$fa *=$_;
}
print "factorial of $no is $fa\n";


my $j = 1;
my $f = 1;

while ($j <= $ARGV[0])	{
		$f *= $j;
		$j++;
}
print "facotrial of $ARGV[0] is $f\n";

