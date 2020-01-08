#!/usr/bin/perl 
use strict;
use warnings;

package Opr; 

print "Select your operation multiple values +,*, : ";
my $op = <STDIN>;
chomp($op);
print "Enter the multiple elements addtion, To exit Enter N: \n";
my $a = <STDIN>;
chomp($a);

my $ss = $a;

sub Mul_val {
		
		while (1)	{
				$a = <STDIN>;
				chomp($a);
				last if ($a eq "N");
				$ss = eval "$ss $op $a";
		}
		print "Operation \"$op\" value : $ss\n";
}


Mul_val();

1;
