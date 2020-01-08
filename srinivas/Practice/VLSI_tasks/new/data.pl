#!/usr/bin/perl -w
use strict;
use Data::Dumper;
##-------------------------------------------
## read the file and build the hash referance
##-------------------------------------------
my $file = '/home/srm/srinivas/Practice/VLSI_tasks/data.txt';
## read file data.txt
open(IN,"$file") || die "Not able to open '$file' $!";
my $hash;
my $key;
while (my $line = <IN>)	{
		chomp($line);
		next if ($line =~ /^$/);
		if ($line =~ /\#+(\w.+)/) { 
				$key = $1;
		} elsif ($line =~ /\=/)	{
				$hash->{$key}->{$`} = $';
		}
}
#print Dumper($hash);




foreach my $kk (keys %{$hash})	{
		print"##$kk\n";
		while ( my ($k1,$v1) = each (%{$hash->{$kk}}))	{
				print"$k1=$v1\n";
		}
}





## close file handler 
close(IN);
