#!/usr/bin/perl -w
use strict;
#Write a program that copies a file named file1 to file2, and then appends another copy of file1 to file2.

die "Not able to open the file1 $!" unless (open(IN,'file1'));
die "Not able to open the file1 $!" unless (open(OUT,'>file2'));
die "Not able to open the file1 $!" unless (open(OUT1,'>>file2'));
## copy file name file1 to file2

while (my $line = <IN>)	{
		chomp($line);
		print OUT "$line\n";
		print OUT1 "$line\n";
}




close(IN);
close(OUT);
close(OUT1);


