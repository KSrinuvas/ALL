#!/usr/bin/perl -w
use strict;
use DBI;



##------------------------------------------------------------------##
##-- Write a simple program in perl to collect the DBI module path
##------------------------------------------------------------------##



foreach my $path (values (%INC)	)	{
			if ($path =~ /DBI/i)	{
					print "matching the path : $path\n";
			}
}

	

BEGIN {
		print"####################################\n";
		print " To Collect the DBI module path\n";
		print"####################################\n";
}

