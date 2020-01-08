#!/usr/bin/perl -w
use strict;
use warnings;

my $file = "/home/srm/srinivas/PL_FILES/TASKS1/l2.txt";
die "Not able to open file $!" unless(open(IN,"$file"));

my %hash;   ## build the hash count the rabbit 

while (my $line = <IN>)	{
		chomp($line);
		next if($line =~ /\#/);
		next if($line =~ /^$/);
#		my @array = split(/ +/,$line);
		foreach my $key (split/ +/,$line) {
#		foreach my $key (@array)	{
#				print"$key\n";
				if ($key eq 'the')	{
						$hash{$key}++;
				} elsif ($key eq 'you')	{
						$hash{$key}++;
				} elsif ($key eq 'is')	{
						$hash{$key}++;
				}
		}	
}




while (my ($k,$v) = each(%hash))	{
		print"$k => $v\n";
}



close(IN);


