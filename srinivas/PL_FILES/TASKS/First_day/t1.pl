#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my $ar = [[1,2,3,4],[5,6,7,8],[9,10,11,12]];
my ($v,$d,$b,$c,@Even_no,@odd_no,@First_ele,@last_ele);
#print Dumper($ar);
foreach $v (@{$ar})	{
				for $d (@{$v})	{
					#	print"$d\n";
						if ($d%2==0)	{
								push(@Even_no,$d);
						}else	{
								push(@odd_no,$d);
						}
				}
}
 
print "\nEven_no's in array of array ==> @Even_no\n\n";
print "Odd_no's in array of array ==> @odd_no\n\n";
foreach $b (@{$ar})	{
	#			print"$b\n";
				@First_ele = push(@{$b},10);
				
}
print "@First_ele\n";
## TO bulid the Dynamic Array of Array 
my $cc;
$cc->[0]->[0] = 1;
$cc->[0]->[1] = 2;
$cc->[0]->[2] = 3;
$cc->[0]->[3] = 4;
$cc->[1]->[0] = 5;
$cc->[1]->[1] = 6;
$cc->[1]->[2] = 7;
$cc->[1]->[3] = 8;
$cc->[2]->[0] = 9;
$cc->[2]->[1] = 10;
$cc->[2]->[2] = 11;
$cc->[2]->[3] = 12;
#print Dumper($cc),"\n";
