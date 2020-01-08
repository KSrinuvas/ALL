#!/usr/bin/perl

sub Rec {
    $path = shift;
    print "$path\n";
}


Rec($ARGV[0])
