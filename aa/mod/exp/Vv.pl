#!/usr/bin/perl
use strict;
use warnings;

use Vv;
use Vv qw($name @array %hash);

print "$name\n";

print "@array\n";

while (my ($k,$v) = each (%hash) ) {
		print "$k => $v\n";
}

