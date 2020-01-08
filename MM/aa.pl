#!/usr/bin/perl
use strict;
use warnings;

my $str = "a2b4c6d7g10";
my @arr = split(/(\d+)/,$str);

my $i = 0;
my ($a,$pp);
my $kk;
while ($i < @arr) {
    if ($i%2==0) {
        $a = $arr[$i];
    } else {
        $pp .= $a x $arr[$i];
    }
    $i++;
}
print "$pp\n";

