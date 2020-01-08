#!/usr/bin/perl
use strict;
use warnings;
open(IN,'l.txt') || die "Not able to open t.txt file $!";
open(OUT,'>wri3.txt') || die "Not able to open t.txt file $!";
while (my $line = <IN>)	{
		chomp($line);
		my $re = data($line);
		print OUT "$line -this is oval\n" if ($re == 1);
}
sub data {
		my $b = shift;
		return 1 if ($b =~ /[aeiou]/i);
		return 0;
}
close(IN);
close(OUT);
