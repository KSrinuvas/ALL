#!/usr/bin/perl
use strict;
use warnings;
my $string = "There's more than One Way to DO it!";
print "Enter a test expression: ";
my $pat = <STDIN>;
chomp($pat);
if ($string =~ /$pat/i) {
print "Congratulations! '$pat' matches the sample string.\n";
} else {
print "Sorry. No match found for '$pat'\n";
}
