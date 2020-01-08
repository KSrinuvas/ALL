#!/usr/bin/perl -w
use strict;


die "not able to open a.txt file $!" unless(open(IN,'a.txt'));
die "not able to open b.txt file $!" unless(open(IN1,'b.txt'));
die "not able to create mer.txt file $!" unless(open(OUT,'>mer.txt'));
my $line = <IN>;
chomp($line);
while (my $l = <IN1>)	{
		print OUT "$line\n";
		chomp($l);
		print OUT "$l\n";
		$line = <IN>;
		chomp($line);
}
close(IN);
close(IN1);
close(OUT);
