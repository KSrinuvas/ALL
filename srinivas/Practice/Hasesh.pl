#!/usr/bin/perl -w
use strict;

my %hash = ('a' => {'aa' => 1,'bb' => 20});

## updated aa
$hash{'a'}->{'aa'} = 10;


## add on cc key 

$hash{'a'}{'cc'} = {'dd' => 50};


$hash{'a'}{'cc'}{'ee'} = 100;


while (my ($k,$v) = each (%hash))	{
		print"$k => {\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}))	{
						if (ref($v1) eq 'HASH')	{
								print "  $k1 => {\n";
								while (my ($k2,$v2) = each (%{$v1}))	{
										print"      $k2 => $v2\n";
								}
								print "        \}\n";
						} else {
								print"  $k1 => $v1\n";
						}
				}
				
		}
		print" \}\n";
}




