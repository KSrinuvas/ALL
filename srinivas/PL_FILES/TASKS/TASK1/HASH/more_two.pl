#!/usr/bin/perl -w
use strict;

#More than two dimensions

my %data;

$data{'Foo Bar'}{Art}{Drawing} = 82;
$data{'Foo Bar'}{Art}{Theory} = 76;
$data{'Foo Bar'}{Art}{Practical} = 64;


while (my ($k,$v) = each (%data))	{
		while (my ($k1,$v1) = each (%{$v}))	{
				while (my ($k2,$v2) = each (%{$v1})) {
						print"$k, $k1, $k2 => $v2\n";
				}
		}
}

