#!/usr/bin/perl
use strict;
use warnings;
open(IN,'l2.txt') || die "NOt able to open l2.txt file $!";
my ($rabbit,$boy,$toyb) = (0,0,0);
while (my $line = <IN>)	{
			next if ($line =~ /^\#/);
			next if ($line =~ /^$/);
			chomp($line);
			rab($line);
			ma($line);
			toy($line);
}
close(IN);
## rabbits count 
sub rab {
		my $bb = shift;
		if ($bb =~ /rabbit/i) {
				$rabbit++;
		}
}
## man count 
sub ma {
		my $cc = shift;
		if ($cc =~ /boy/i) {
				$boy++;
		}
}
##  count the no of toybox in a file 
sub toy {
			my $dd = shift;
			if ($dd =~ /toybox/i) {
					$toyb++;
			}
}
print"COUNT THE NO OF RABBITS IN A FILE : $rabbit\n";
print"COUNT THE NO OF boy IN A FILE : $boy\n";
print"COUNT THE NO OF toybox IN A FILE : $toyb\n";
