#!/usr/bin/perl -w
use strict;
use Data::Dumper;

##------------------------------------------------
## Description : Read the file and build the hash
##------------------------------------------------

my $file = '/home/srm/srinivas/Practice/VLSI_tasks/jj.txt';

## read a file 
open(IN,"$file") || die "Not able to open '$file' $!\n";

my %hash;
my $key;
while (my $line = <IN>)	{
	#	print"$line\n";
		if ($line =~ /(\w.+)\=(.?\w.+.*)/)	{
			#	print"$1 => $2\n";
				$hash{$1} = $2;
				$key = $1;
		} else {
				$hash{$key} .= $line;
		}
}

if (exists $hash{'description'})	{
		chomp($hash{'description'});
}

print Dumper(\%hash);

## close file handler
close(IN);
