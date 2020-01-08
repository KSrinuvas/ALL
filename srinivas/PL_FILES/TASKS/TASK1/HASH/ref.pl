#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my %hash = ('srinu' => 98,'vas' => 55,sunil=>70);
#print Dumper \%hash;

foreach (keys %hash)	{
		if ($hash{$_} >= 90)	{
				print "$_ is a first class\n";
		} elsif ($hash{$_} >= 70)	{
				print "$_ is a second class\n";
		} else {
				print "$_ is a threed class\n";
		}	
}


my %hash1 = (kite => {kkd => 95,rjy => 98});

## in kite clg has two branches are kkd and rjy to find which branch is more pass percentage?

while (my ($k,$v) = each (%hash1))	{
	#	print"$k => $v\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each(%{$v}))	{
						}
				}
		}
}
