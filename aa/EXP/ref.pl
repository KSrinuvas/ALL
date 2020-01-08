#!/usr/bin/perl -w
use strict;

use 5.010;
 
print "First number: ";
my $x = <STDIN>;
 
print "Second number: ";
my $y = <STDIN>;
 
print "Operator [+-*/]: ";
my $op = <STDIN>;
 
my $z = eval "$x $op $y";
 
say $z;




