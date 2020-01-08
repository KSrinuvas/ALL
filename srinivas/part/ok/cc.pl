#!/usr/bin/perl -w
use strict;
#use Data::Dumper;
use DBI;



##------------------------------------------------------------##
##--       TO collect the path of DBI module  							--##
##------------------------------------------------------------##

#print "$_\n" foreach (@INC);

foreach  (values (%INC))	{
	#	print"$_\n";
		if ($_ =~ /dbi/i)	{
				print"$_\n";
		}
}




foreach (keys (%INC))	{
#		print"$_\n";
		if ($_ =~ /dbi/i)	{
#				print"$_\n";
		}
}


foreach (keys (%INC)) {
#		print"$_\n";
}


