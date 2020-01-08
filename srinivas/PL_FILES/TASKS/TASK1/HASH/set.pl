#!/usr/bin/perl -w
use strict;

#I compare two sets of hash references using Perl?

open(IN,'a.txt') || die "Not able to open file $!";
my ($s1,$v1);
my %hash;
while (my $line = <IN>)	{
		chomp($line);
		$line = join' ',split' ',$line;
		($s1,$v1) = split("=",$line);
		$hash{$s1}{'value1'} = $v1;
		$hash{$s1}{'value2'} = $v1;
}

use Data::Dumper; 
print Dumper \%hash;




foreach my $key (sort (keys %hash))	{
		print "$hash{$s1}{'value1'} | $hash{$s1}{'value2'}\n";
}
	
	
close(IN);		


