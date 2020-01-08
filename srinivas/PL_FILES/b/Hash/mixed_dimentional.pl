#!/usr/bin/perl -w
use strict;

## mixed dimensional hash

my %mixed_dime;

$mixed_dime{'clg'}{'rank'}[0] = 1;
$mixed_dime{'clg'}{'rank'}[1] = 4;
$mixed_dime{'clg'}{'rank'}[2] = 5;

while (my ($k,$v) = each (%mixed_dime)) {
#		print"$k => $v\n";
		if (ref($v) eq 'HASH')	{
					while (my ($k1,$v1) = each (%{$v})) {
							#print" $k1 => $v1\n";
							 if (ref($v1) eq 'ARRAY')	{
										foreach (@{$v1})	{
												print" $k,$k1, $_\n";
										}
							 }
					}
		}
}



