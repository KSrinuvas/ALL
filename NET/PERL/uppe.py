#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

=c
Write a program that accepts a sentence and calculate the number of upper case letters and lower case letters.
Suppose the following input is supplied to the program:
Hello world!
Then, the output should be:
UPPER CASE 1
LOWER CASE 9
=cut

my $aa = <STDIN>;
chomp($aa);
my $hh_ref = {};
foreach (split('',$aa)) {
    if ($_ =~ /[A-Z]+/) {
        $$hh_ref{'Upper'}++;
    } elsif ($_ =~ /[a-z]+/) {
        $$hh_ref{'lower'}++;
    }
}


print Dumper($hh_ref);
