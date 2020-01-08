#!/usr/bin/perl -w
use strict;
# A program that prints out the powers of two.
print "Enter the some int no to get powrs of two : ";
my $no = <STDIN>;
chomp($no);
my $pow = $no ** 2;
print "the no $no powers of two is :$pow\n";



# this program asks for a number, n, and prints 2 to the
# exponent n
my $exp = 2 ** $no;
print" the $no is 2 to the exponent of $no : $exp\n";

