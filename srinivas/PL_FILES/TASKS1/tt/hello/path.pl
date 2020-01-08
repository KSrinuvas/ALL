#!/usr/bin/perl
use strict;
use warnings;

## 
open(OUT,'>path2.txt') || die "Not able to open $!";
while (<>)	{
		chomp($_);
		s{\/home\/srm\/srinivas\/PL_FILES\/TASKS1\/}{\/home\/srm\/perl\/task\/};
		print OUT "$_\n"; 
}

close(OUT);
