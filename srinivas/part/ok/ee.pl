#!/usr/bin/perl -w
use strict;
use Data::Dumper;


foreach (@INC)	{
		print"$_\n";
}

foreach (values (%INC)) {
		print "$_\n";
}

