#!/usr/bin/perl -w
use strict;

## greedy 

## read file below file 

#open(IN,"greedy.txt") || die "Not able to open 'greedy.txt' $!";
open(IN,"srinivas/PL_FILES/TASKS1/greedy.txt") || die "Not able to open 'greedy.txt' $!";

while (my $line = <IN>)	{
		chomp($line);
	#	print"$line\n";
		gree($line);
		nongree($line);
}



## greedy 

sub gree {
		my $line = shift;
		if ($line =~ /<.*>/)	{
#				print"$&\n";
		}
}


sub nongree {
		my $line = shift;
		if ($line =~ /<.*?>/)	{
				print"$&\n";
		}
}


