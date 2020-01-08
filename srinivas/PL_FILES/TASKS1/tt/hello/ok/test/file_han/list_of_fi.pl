#!/usr/bin/perl -w
use strict;
#Write a program that takes a list of files and indicates, for each file, whether the user has read, write, or execute permission.

my $size = @ARGV;
my $i = 0;
while ($i < $size)	{
		print"$ARGV[$i]\n";
		$i++;
}

