#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

## count the no of digits and no of leter 

my $ss = <STDIN>;
chomp($ss);
print "$ss\n";
my $pp = 0;
my $yy = 0;
my %hh = ();
foreach (split('',$ss)) {
    if ($_ =~ /\d+/) {
        $hh{'digits'}++; 
    } elsif ($_ =~ /\w+/) {
        $hh{'words'}++;
    }
}

print Dumper(\%hh);

    

