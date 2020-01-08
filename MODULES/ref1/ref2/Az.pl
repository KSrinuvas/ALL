#!/usr/bin/perl -w

use Az;

my $rr = &Test1::f1(100);

print"$rr\n";


&Test2::f2(100,200,300);


my %hash = ('a',10,'b',20,'c',30);

&Test3::f3(%hash);


my @aa = @Test4::array;

print "@aa\n";



my $ss = $Test5::str;

print"$ss\n";



