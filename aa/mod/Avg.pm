#!/usr/bin/perl 
use strict;
use warnings;

package Avg; 


print "Enter the multiple values addtion, To average value, To exit Enter N: \n";
my $a = <STDIN>;
chomp($a);

my $ss = $a;
my $len = 1;
my $avg = 0;
sub Mul_val {
		
		while (1)	{
				$a = <STDIN>;
				chomp($a);
				last if ($a eq "N");
				$ss +=$a;
				$len++;
		}
		print "Total value is :$ss\n";
		print "Length of value is : $len\n";	
		$avg = $ss/$len;
		print "Average value is : $avg\n";	
}



Mul_val();


1;
