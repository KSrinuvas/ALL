#!/usr/bin/perl
use strict;
use warnings;

$_ = 'is it cat';

print"$_\n";
## twist the first word is second and second word first

s/(\w+)\s+(\w+)/$2 $1/;

print"yes $_\n";



## globally change these two words 

$b = "is this cat,is this rabbit";

print"$b\n";
#$b =~ s/(\w+)\s+(\w+)/$2 $1/g;

## or

$b =~ s[(\w+)\s+(\w+)]
			 [$2 $1]g;         ## we are using < or { or ( or [ or /

## or


print"yes $b\n";






