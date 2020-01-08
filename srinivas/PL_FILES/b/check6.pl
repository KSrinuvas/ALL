#!/usr/bin/perl
use strict;
use warnings;

for (1) {
		our $a = 10;
		local $d = 50;
		aa();
		print"$a\n";
}
print"$a\n";

