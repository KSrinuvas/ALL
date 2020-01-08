#!/usr/bin/perl -w
use strict;

use Data::Dumper;
#Less than two dimensions

my %data = ('a' => {'aa' => 10},'b' => {'bb' =>20});

while (my ($k,$v) = each (%data))	{
		while (my ($k1,$v1) = each (%{$v}))	{
				print"$k, $k1 => $v1\n";
		}	
}

$data{'joy'} = 'absent'; #Here the Joe key does not have a second dimension. This would work almost flawlessly:

print Dumper \%data;
