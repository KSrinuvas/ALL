#!/usr/bin/perl 
use strict;
use warnings;

package Fact;


print "Enter Factorial of X : ";
my $no = <STDIN>;
chomp($no);
#print "$no\n";

my $a = 1;
my $fact = 1;
sub Fact {
		foreach ($a..$no)	{
				$fact *= $_;
		}
		print "Factorial of $no is : $fact\n";
}

Fact();

1;	
