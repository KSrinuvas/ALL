#!/usr/bin/perl
use strict;
use warnings;
open(IN,'l2.txt') || die "Not able to open file l2.txt $!";    ## read file l2.txt
open(OUT,'>l4.txt') || die "Not able to write a file l4.txt $!"; # write a file l4.txt
foreach (<IN>)	{
		next if (/^\#/);
		chomp($_);
#		print"$_\n";
}
seek(IN,0,0);
while (my $line = <IN>)	{
		if ($line =~ /^\#/) 	{
				next;
		} 
		unless ($line =~ /s/)	{
				next;
		}
		chomp($line);
		my $ret = data($line);
		print OUT "$ret\n";
				
}
## i want the change l2.txt file replace rabbit in dog and save to a new file l4.txt
sub data {
		my ($aa,@arr) = @_;
		if ($aa =~ s/Rabbit/\udog/)	{
				return $aa;
				}
		} else {
				return $aa;
		}
}
close(IN);
close(OUT);
