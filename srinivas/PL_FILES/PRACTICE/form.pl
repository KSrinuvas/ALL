#!/usr/bin/perl -w
use strict;
## sprintf 
my $num = 1234567800;
## format number with upto 8 leading zeroes
my $result = sprintf("%08d",$num);
print"$result\n";

## round num to 3 digits after decimal points 
printf("%s\n", "hello");


printf("%.3f$/",123.456);

my $rr = sprintf("%.2f",555.13);
print"$rr\n";
