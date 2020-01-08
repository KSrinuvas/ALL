#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
## to print 1 to 9 numbers 

my @a = [[1,2,3,4,5],{'a'=>6},7,8,9];
my (@array,$i,$v,$x,$y);
foreach $i (@a)	{
		foreach $v (@{$i})	{
				if (ref($v) eq 'ARRAY')	{
						foreach $x (@{$v})	{
								push(@array,$x);	
						}
				} elsif (ref($v) eq 'HASH')	{
						foreach $y (values(%{$v}))	{
								push(@array,$y);
						}
				} else	{
						push(@array,$v);
								}
				}
}

print "@array\n";

## bulid the array of hash referance dynamic way

my $ar_ha;

$ar_ha->[0] = [1,2,3,4,5];
$ar_ha->[1]->{'a'} = 6;
$ar_ha->[2] = 7;
$ar_ha->[3] = 8;
$ar_ha->[4] = 9;

print Dumper($ar_ha),"\n";
print Dumper(\@a),"\n";


## without referance build the dynamic way

my @arr_has;

$arr_has[0] = [1,2,3,4,5];
$arr_has[1]->{'a'} = 6;
$arr_has[2] = 7;
$arr_has[3] = 8;
$arr_has[4] = 9;

print Dumper(\@arr_has),"\n";




