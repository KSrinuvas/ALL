#!/usr/bin/perl
use strict;
use warnings;

open(IN,'ok.txt') || die "Not able to open file $!";

while (my $line = <IN>)	{
			chomp($line);
			$line =~ s/(^\s+|\s+$)//g;
			next if ($line =~ /^\#/);
			next if ($line =~ /^$/);
			print"$line,\n";
}


close(IN);
