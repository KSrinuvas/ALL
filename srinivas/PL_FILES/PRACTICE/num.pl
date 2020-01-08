#!/usr/bin/perl
use strict;
use warnings;

## perl Automatic str to no convetion

my $str1  = "100";
my $str2 = "200";

my $n1 = sprintf("%d",$str1);
my $n2 = sprintf("%d",$str2);

my $sum = $n1+$n2;

print "$sum \n";

my $sum1 = $n1.$n2;

print "$sum1 \n";


my $ss = $str1.$str2;

print "$ss\n";

printf("%d",$str1);
