#!/usr/bin/perl -w
use strict;

my $a = 10;
my $b = 0;

print"start of the nested while loops\n";
while ($a < 20)	{
		print"first loop : $a\n";
		while ($b < 10)	{
				print"second loop : $b\n";
				$b++;
		}
		$a++;
}
print"end of nested loops\n";
