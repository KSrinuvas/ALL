#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# Sequential Number Arrays

my @a = (1..10);

print "@a\n";



print "$a[0]\n";

print "$a[-1]\n";

my @alp = ('a'..'z');
print "@alp\n";



my %hash = ();
my @bb = (1..26);

@hash{@alp} =  @bb;

print Dumper(\%hash);



foreach my $k (sort(keys %hash)) {
	print "$k => $hash{$k}\n";
}








