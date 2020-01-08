#!/usr/bin/perl -w
use strict;




sub A
{
    my  $a=2;
    local $b=3;
    print "In A: $a : $b";
    B();
}

sub B
{
    print "In B: $a : $b";
    C();
}

sub C
{
    print "In C: $a : $b";
}

A();
print $b;
