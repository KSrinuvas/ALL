#!/usr/bin/perl -w
use strict;

my @arr = (1,2,1,2,6,5,4,3);
my %hash;
@hash{@arr} =();
@arr = sort(keys %hash);
print"@arr\n";


## 2

my %hash1;

my @words = qw(hello hi hello hi ok a b d c a g h f);

my @new;
foreach my $k (sort @words)	{
		next if ($hash{$k}++);
		push(@new,$k);
}
print"@new\n";



