#!/usr/bin/perl
use strict;
use warnings;

open(IN,'ok.txt') || die "Not able to open file $!";

while (my $line = <IN>) {
		next if ($line =~ /^\#/);
		chomp($line);
		$line = join ' ', split ' ',$line;
		next if ($line =~ /^$/);
		print"$line,\n";
}
