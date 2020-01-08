#!/usr/bin/perl -w
use strict;

##------------------------------------------------------------
## Find out the odd and even no from the command line?
##------------------------------------------------------------


my @ev =();
my @od =();
foreach (@ARGV)	{
		if ($_%2==0) {
				push(@ev,$_);
		} else {
				push(@od,$_);
		}
}
print "even no is : @ev\n";
print "odd no is : @od\n";
