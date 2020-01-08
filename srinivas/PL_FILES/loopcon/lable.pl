#!/usr/bin/perl
use strict;
use warnings;

my $a = 10;
my $str = "LO";
my $str1 = "OP";

LOOP: do {
					if ($a == 20)	{
							$a+=1;
							goto $str.$str1;
					}
					print "$a\n";
					$a+=1;
}while ($a < 40);


