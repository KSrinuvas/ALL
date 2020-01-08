#!/usr/bin/perl -w
use warnings;


#my $myval = $a || $b || $c;
my $myvalue;

is equivalent to

my $a = 10;
my $b = 20;
my $c = 1;
if ($a != 0) {

        $myvalue = $a;

} elsif ($b != 0) {

        $myvalue = $b;

} else {

        $myvalue = $c;

}

print"$myvalue\n";
