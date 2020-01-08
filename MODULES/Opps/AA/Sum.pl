#!/usr/bin/perl
use strict;
use warnings;

use Sum;
import Sum1;

my $obj = new Sum();

my $res = $obj->Add(10,20,30,40,50);

print "Sum is : $res\n";




my $obj1 = new Sum1();

my $res1 = $obj1->Add(1..10);

print "Sum1 is : $res1\n";

