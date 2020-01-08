#!/usr/bin/perl
use strict;
use warnings;






while (my ($k,$v) = each (%SIG)) {
	print "$k \n";
}

