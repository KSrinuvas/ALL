#!/usr/bin/perl -w
use strict;

my $a = 10;
print "\$a value is $a\n";
my $b = 20;
print "\$b value is $b\n";
my $sum = $a +$b;

BEGIN {
		print "Begin of the code\n\n";
} END {
		print "\nEND of the code\n";
}


print "sum of \$a and $b is : $sum\n";


