#!/usr/bin/perl -w
use strict;

open(IN,'aa.txt') || die "Not able to open a.txt $!";
open(OUT,'>aa_updated.txt') || die "Not able to open a.txt $!";
my %seen;
while (my $line = <IN>)	{
		chomp($line);
		next if (defined $seen{$line});
#		print"$line\n";
		print OUT "$line\n";
		$seen{$line}++;
}

close(OUT);
close(IN);


	
