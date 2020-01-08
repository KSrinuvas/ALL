#!/usr/bin/perl
use strict;
##read the greedy file 
open(IN,'greedy.txt') || die "Not able to open file $!";
while (my $line = <IN>) {
		chomp($line);
		gre($line);
		non($line);
}
## greedy repetition
sub gre {
		my $gr = shift;
		if ($gr =~ /<.*>/) {
				print"$&\n";
		}
}
##Nom greedy repetition
sub non {
		my $ng = shift;
		if ($ng =~ /<.*?>/)	{
		#		print"$&\n";
		}
}
