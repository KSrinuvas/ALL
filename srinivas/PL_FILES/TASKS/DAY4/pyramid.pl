#!/usr/bin/perl
use strict;
use warnings;
#use 5.010;
=c 
my $x = 2;
my $y = 3;
 
my $z = '*'x $x;
 
say $z;
=cut

my @arr = (1,3,5,7,9,11,13,15,17,19);
my $d = 19;
my $c;
my $s = " ";

while (<@arr>)	{
			$c = ' 'x $d.'*'x$_;
			print"$c\n";
			$d--;
	#		$_++;

}
