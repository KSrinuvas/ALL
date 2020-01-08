#!/usr/bin/perl -w
use strict;

my %hash = ('a' => 1,'b'=>2);
my %hash1 = ('a' => 10,'b' => 20);

print %hash,"\n";
print %hash1,"\n";

my %temp = %hash;
%hash = %hash1;
%hash1 = %temp;

print %hash,"\n";
print %hash1,"\n";
