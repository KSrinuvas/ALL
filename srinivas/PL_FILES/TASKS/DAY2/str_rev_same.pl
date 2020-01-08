#!/usr/bin/perl
use strict;
use warnings;
print"Enter the string : ";
my $str = <STDIN>;
chomp($str);
my $rev = scalar reverse($str);
my @arr = split(" ",$rev);
my @rev_l = reverse(@arr);
my $new = join(" ",@rev_l);
print"$str\n";
print"$new\n";

