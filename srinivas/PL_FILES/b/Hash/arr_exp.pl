#!/usr/bin/perl
use strict; 
use warnings; 

sub main
{
    # Declare and initialize an array.
    my @items = @ARGV;
    
    # Sort the array.
    @items = sort {
        if($a > $b) {
            return 1;
        }
        elsif($b > $a) {
            return -1;
        }
        else {
            return 0;
        }
    } @items;
    
    # print the array contents.
    foreach my $item(@items) {
        print "$item\n";
    }
}

main();

