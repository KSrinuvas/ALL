#!/usr/bin/perl
use strict;
use warnings;

use Calc;
import Ok;

my $obj = Calc->new();
#my $obj = Test->new();

my $sum = $obj->Add(10,20,30,40);

print "sum of multiple value : $sum\n";


my $obj1 = Ok->new();

my $sum1 = $obj1->Add(30,40);

print"sum of two values :  $sum1\n";

