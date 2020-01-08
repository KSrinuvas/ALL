#!/usr/bin/perl -w
use strict;


my $file = "ovels.txt";
## read the file ovals.txt


open(IN,"$file") || die "Not able to open file $!";

open(OUT,">collect_ovals.txt") || die "Not able to write a file $!";
	
while (my $line = <IN>)	{
		chomp($line);
		my $bb = Get_let($line);
		if ($bb == 1)	{
				print OUT "$line\n";
		}
}



sub Get_let {
		my $line = shift;
		if ($line =~ /[aeiou]/)	{  ## [] matches the any single charater in a breackets
					return 1;
		} else {
					return 0;
		}
}	


close(OUT);
close(IN);

