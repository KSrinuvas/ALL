#!/usr/bin/perl
use strict;
use warnings;

sub Read_file {
    my $file = shift;
    open(IN,"$file") || die "Not able to open '$file' $!";
    while (my $line = <IN>) {
        #chomp($line);
        #print ($line);
        my $aa = cc($line);
        if ($aa == 1) {
            print ($line);
        }
    }
}



Read_file('new.txt');


sub cc {
    my $dt = shift;
    if ($dt =~ /[aeiou]/) {
        return 1
    } else {
        return 0
    }
}    
