#!/usr/bin/perl -w
use strict;

my $weeks = "sun mon tue wed thr fri sat";

## Lookhead 

## postive lookahead 

if ($weeks =~ m/sun\s+(?=mon)/) {
		print"positive look head\n";
}


## negitive lookbehind
if ($weeks =~ m/sun\s+(?!tue)/)	{
		print"negitive look head\n";
}



## look behind

## positive look behind


if ($weeks =~ m/(?<=thr)\s+fri/) {
		print"Positive lookbehind\n";
}

## negitive look behind

if ($weeks =~ m/(?<!thr)\s+sat/) {
		print"negitive lookbehind\n";
}


