#!/usr/bin/perl -w
use strict;

## Half-life 


# import module
use Getopt::Long;

my $age;
# read options
my $result = GetOptions ("age=i" => \$age);

# print value
if ($age) { print "Input age is $age years\n"; }

=c
Here's the output:

$ ./script.pl --age=89
Input age is 89 years

=cut
