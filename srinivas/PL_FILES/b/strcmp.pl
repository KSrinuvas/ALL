#!/usr/bin/perl
use strict;
use warnings;

### string operators 
#   eq 
#   ne 
#   ge                            ### geter then return 1
#   le                            ### less then return -1
#   lt                            ### cmp eq return 0
#   gt  
#   cmp  



my $aa = 'abc';
my $bb = 'xyz';

my $r1 = $aa ne $bb;
print"$r1\n";

my $r2 = $aa le $bb;
print"$r2\n";

my $r3 = $aa cmp $bb;
print"$r3\n";


my $r4 = $aa cmp $aa;

print"$r4\n";


my $r5 = $bb cmp 'hello';
print"$r5\n";



