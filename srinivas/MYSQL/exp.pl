#!/usr/bin/perl -w
use strict;

my %hh = (a=>1,b=>2,c=>3);

my @aa;

push(@aa,\%hh);

#print"@aa\n";


foreach (@aa)	{
		print;
		print"\n";
}

