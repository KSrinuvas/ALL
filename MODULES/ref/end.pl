#!/usr/bin/perl -w
use strict;


END {
		print "End of the line\n";
}




my %hash = (a=>10,b=>20,c=>30);

while (my ($k,$v) = each (%hash)) {
		print "$k => $v\n";
}






