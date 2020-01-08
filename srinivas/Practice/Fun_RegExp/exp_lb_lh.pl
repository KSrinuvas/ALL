#!/usr/bin/perl -w
use strict;

##

my %hash = (
    1        => 'equity, private equity',
    2        => 'equity',
    3        => 'private equity',
    4        => 'private equity,equity',
    5        => 'private equity, equity',
    6        => 'equity,private equity',
    7        => 'private equity',
    8        => 'mutual funds',
    9        => 'cds'
);

while (my ($k, $v) = each %hash) {
    next unless $v =~ m/(?!private\s+)equity/;
 #  printf("%d -> %s\n", $k, $v);
}


while (my ($k1,$v1) = each (%hash))	{
		unless ($v1 =~ m/(?!private\s+)equity/)	{
				next;
		}
		printf("%d -> %s\n", $k1, $v1);
}
