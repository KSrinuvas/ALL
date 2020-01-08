#!/usr/bin/perl
use strict;
use warnings;

my $file ="/home/srm/srinivas/PL_FILES/TASKS/DAY6/ab.txt";

open(IN,"$file") || die "NOt able to open $!\n"; 

foreach (<IN>)	{
			chomp($_);
#			print"$_\n";
		#	if ($_ =~ /addr\:\[0-255]\.\[0-255]\.\[0-255]\.\[0-255]/)	{
			if ($_ =~ /(addr)(\:)/)	{
							print"$1\n";
			}
}

