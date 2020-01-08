#!/usr/bin/perl -w
use strict;

##----------------------------------------------------##
##-- write a simpe program on begin and end blocks  --## 
##----------------------------------------------------##




END {
		print "Program successfully complected\n";
}



my @arr = qw(1 2 3 4 5);

foreach (@arr)	{
		print"$_\n";
}

BEGIN {
		print "Program is Started\n";
}




