#!/usr/bin/perl
use strict;
use warnings;
our $name = "srinivas";

sub sub1
{
    print "Name = $name\n";
    local $name = "vas";

    &sub2;
    &sub3;
}

sub sub2
{
    print "Name = $name\n";
}

sub sub3
{
    my $name = "srinu";
    print "Name = $name\n";
}
&sub1;

