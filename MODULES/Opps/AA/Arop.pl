#!/usr/bin/perl
use strict;
use warnings;

use Arop;

my $obj = Arop->new();

my $sum = $obj->Add(10,20);
my $sub = $obj->Sub(20,10);
my $mul = $obj->Mul(2,4);
my $div = $obj->Div(10,5);

print "sum of two values is : $sum\n";
print "sub of two values is :$sub\n";
print "mul of two values is : $mul\n";
print "div of two values is :$div\n";
 
