#!/usr/bin/perl
use strict;
use warnings;
use IO::File;
my $FH = IO::File->new('l1.txt','r') || die "Not able to open l1.txt file $!";     ## read a file mixing of all ovels and consonats
my $WR = IO::File->new('wri1.txt','w') || die "Not able to open l1.txt file $!";   ## write a file ovels 
my $WR1 = IO::File->new('wri1_conj.txt','w') || die "Not able to open l1.txt file $!";  ## write a file consonants
while (my $line = <$FH>)	{
		chomp($line);
		my $cc = data($line);
		print $WR "$line -this is vowel\n" if ($cc == 1);
		print $WR1 "$line -this is conjonents \n" if ($cc == 0);
}
sub data {
		my $p = shift;
		if ($p =~ /a|e|i|o|u/i)	{
				return 1;
		} else {
				return 0;
		}
}	
