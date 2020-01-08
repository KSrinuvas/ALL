#!/usr/bin/perl -w
use strict;

die "not able to open aa.txt file $!" unless(open(IN,'aa.txt'));
my %hash;
while (my $line = <IN>)	{
		chomp($line);
#		print"$line\n";
		if (defined $hash{$line})	{	
				next;
		}
		print"$line\n";
		$hash{$line}++;
}



close(IN);
