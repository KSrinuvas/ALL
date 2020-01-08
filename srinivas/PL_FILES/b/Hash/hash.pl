#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my %hash;

$hash{'hello'}{'a'} = 10;
$hash{'hello'}{'b'} = 20;
$hash{'hello'}{'c'} = 30;
$hash{'hi'}{'a'} = 25;
$hash{'hi'}{'b'} = 30;
$hash{'hi'}{'c'} = 45;

#print Dumper(\%hash);

while (my ($k,$v) = each(%hash))	{
			print" $k => {\n";
			if(ref($v) eq 'HASH')	{
					while (my ($k1,$v1) = each(%{$v}))	{
							print"\t   $k1 => $v1\n";
					}
			}
			print"       }\n";

