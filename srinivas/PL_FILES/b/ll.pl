#!/usr/bin/perl
use strict;
use warnings;

my $a = 0;

while ($a < 20) {
		if ($a == 15)	{
				$a+=1;
				next;
		}
	#	print"$a\n";
		$a+=1;
}



foreach (1..10)	{
		$b = $_+1;
		last unless ($b != 7);
		print"$_\n";
}









