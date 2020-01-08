#!/usr/bin/perl -w
use strict;

=c
if (@ARGV <= 2) {
  print STDERR "Usage: $0 PATTERN [FILE...]\n";
	print"$ARGV[0]\n";
	print"$ARGV[1]\n";
#	print"$ARGV[2]\n";
  exit 1;
}
=cut

if (@ARGV < 4)	{
		print"ok\n";
		exit 1;
}
print"the cmd line it will take only 3 arguments you have to give more shows Error\n";




