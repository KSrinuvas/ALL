#!/usr/bin/perl
use strict;
use warnings;

open(IN,'ipaddr.txt') || die "NOt able to open $!";
open(OUT,'>updatedipaddr.txt') || die "NOt able to open $!";
open(OUT1,'>updatedipaddr1.txt') || die "NOt able to open $!";

while (my $line = <IN>)	{
		chomp($line);
		$line =~ s/(\d+)(\.\d+\.\d+\.\d+)/$ARGV[0]$2/;
		print OUT "$line\n";
		print"Enter the you want change the last digits of ip address please enter: ";
		my $ab = <STDIN>;
		chomp($ab);
		$line =~ s/\d+$/$ab/g;
		print OUT1 "$line\n";
}






close(IN);
close(OUT);
close(OUT1);

