#!/usr/bin/perl -w
use strict;

sub cal {
		my $a = shift;
		my $d = shift;
		my $b = shift;
		my $sum = 0;
		if ($d eq 'add')	{
				$sum = $a + $b;
		} elsif ($d eq 'sub')	{
				$sum = $a - $b;
		} elsif ($d eq 'mul')	{
				$sum = $a * $b;
		} elsif ($d eq 'div')	{
				$sum = $a / $b;
		}
		return $sum;
}

print"\n\t\tSIMPLE CALCULATOR USE OPERATORS\n\n";
print "Enter the first no : ";
my $x = <STDIN>;
chomp($x);
print "Enter the operator like add,sub,div,mul : ";
my $op = <STDIN>; 
chomp($op);
print "Enter the second no : ";
my $y = <STDIN>;
chomp($y);

my $result = cal($x,$op,$y);
print "$op of $x and $y values is: $result\n";
