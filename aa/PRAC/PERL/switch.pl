#!/usr/bin/perl
use strict;
use warnings;
use Switch;

my @arr = (10,20,30,40);
my $aa = 10;
my %hh = ('a',10,'b',20,'c',30);

switch($aa) {
	case  "a" { print "string a\n"; }

	case 10 { print "the value is 10\n"; }

	else   { print "case is not true\n"; }
}



