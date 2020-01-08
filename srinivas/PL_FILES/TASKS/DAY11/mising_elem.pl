#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $b = {'a'=>[1,2,5],'b'=>(6,7,8)};
my ($k,$v,$m);
while(($k,$v) = each(%{$b}))	{
			print"$v\n";
			if (ref($v) eq 'ARRAY')	{
					foreach $m (@$v)	{
#							print"$m\n";
					}
			} elsif (ref($v) eq 'HASH')	{
#					print"$v\n";
			}
}

