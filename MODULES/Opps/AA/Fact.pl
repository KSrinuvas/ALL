#!/usr/bin/perl
use strict;
use warnings;

use Fact;

my $obj = new Fact();

my $no = 5;
my $no1 = 6;

my $fac = $obj->Fac($no);

my $fac1 = $obj->Fac($no1);
print "Factorial of $no is : $fac\n";


print "Factorial of $no is : $fac1\n";
