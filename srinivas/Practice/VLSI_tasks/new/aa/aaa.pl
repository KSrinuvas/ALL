#!/usr/bin/perl -w 
use strict;

use 5.010;
 
my $path = shift || '.';
#my $path = '$ARGV[0]';
 
traverse($path);
 
sub traverse {
    my ($thing) = @_;
 
    return if not -d $thing;
    opendir my $dh, $thing or die;
    while (my $sub = readdir $dh) {
        next if $sub eq '.' or $sub eq '..';
        say "$thing/$sub";
        traverse("$thing/$sub");
    }
    close $dh;
    return;
}




