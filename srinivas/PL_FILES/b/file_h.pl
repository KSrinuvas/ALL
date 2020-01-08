#!/usr/bin/perl
use strict;
use warnings;

open(IN, "<aa.py") or die "not able to open file $!\n";

while(<IN>)	{
		print"$_\n";
}



open(OUT, ">>cc.pl") or die "not open the file $!\n";

print OUT "this is srinu";
print OUT "this is srinu";
print OUT "this is srinu";
print OUT "this is srinu";
print OUT "hello srinu";




