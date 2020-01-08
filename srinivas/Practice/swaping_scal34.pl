#!/usr/bin/perl -w
use strict;

my $a = 10;
my $b = 20;

print "\$a value is : $a\n";
print "\$b value is : $b\n";
## swapping of two scalr elements dont required temp varible 

($a,$b) = ($b,$a);

print "\$a value is swapping: $a\n";
print "\$b value is swapping: $b\n";


## swapping of three elements in scalar required temp varible 

my $x = 1;
my $y = 2;
my $z = 3;

print " \$x value is : $x\n \$y value is $y \n \$z value is $z\n";


my $temp = $x;
$x = $y;
$y = $z;
$z = $temp;

print " \$x value is : $x\n \$y value is $y \n \$z value is $z\n";

