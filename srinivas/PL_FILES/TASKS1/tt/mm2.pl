#!/usr/bin/perl
use strict;
use warnings;
open(IN,'file.txt') || die "Not able to open file.txt file $!";
my $aa = $ARGV[0];
while (my $line = <IN>)	{
		next if ($line =~ /^$/);
		chomp($line);
		if ($line =~ /\w+\@\w+\.\w+/)	{
				if ($& =~ $aa)	{
						hh($&);
				}
		}
}
sub hh {
		my $bb = shift;
		print"$bb\n";
}
