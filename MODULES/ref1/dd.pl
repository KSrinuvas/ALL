#!/usr/bin/perl -w
use strict;
use Data::Dumper;

while (my ($k,$v) = each (%INC) ) {
		print"$k => $v\n";
}

