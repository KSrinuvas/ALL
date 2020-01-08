#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper; 

my $hash = {};

$hash->{'emp'}->{'city'}->{'tt'}->{'a'} = 'hello';
$hash->{'emp'}->{'city'}->{'tt'}->{'b'} = 'as';
$hash->{'emp'}->{'city'}->{'tt'}->{'c'} = 'df';
$hash->{'emp'}->{'city'}->{'ii'}->{'d'} = 5;
$hash->{'emp'}->{'city'}->{'ii'} = 55;
$hash->{'emp'}->{'city'}->{'ii'} = 225;
$hash->{'emp'}->{'city'}->{'nn'} = 'hyd';
$hash->{'emp'}->{'col'}->{'oo'} = 'good';
$hash->{'emp'}->{'col'}->{'pp'} = 225;
$hash->{'emp'}->{'col'}->{'qq'} = 'bad';
$hash->{'emp'}->{'roc'}->{'dd'} = 'ghj';
$hash->{'emp'}->{'roc'}->{'ll'} = 2;
$hash->{'emp'}->{'roc'}->{'mm'} = 'kkd';



print Dumper($hash);

print(ref($hash));

print"\n";

while (my ($k,$v) = each (%{$hash}))	{
		print"$k => 	{\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}))	{
						print"\t $k1 => {\n";
						if (ref($v1) eq 'HASH') {
								while (my ($k2,$v2) = each(%{$v1}))	{
										if (ref($v2) eq 'HASH')	{
												while (my ($k3,$v3) = each (%{$v2}))	{
															print"\t\t $k2 => $v2\n";
												}
										} else {
												print"\t\t $k2 => $v2\n";
										}
								}
						}

				}
		}
}















