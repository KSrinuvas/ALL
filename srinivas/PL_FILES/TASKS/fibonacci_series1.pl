#!/usr/bin/perl -w
use strict;


## fibonacci series


print"Enter the fibonacci series x no : ";
my $no = <STDIN>;
chomp($no);


my $next;
my $f = 0;
my $s = 1;

foreach (my $i = 0; $i < $no; $i++) {
	#	print"$i\n";
		if ($i <= 1)	{
				$next = $i;
		} else {
				$next = $f + $s;
				$f = $s;
				$s = $next;
		}
		print"fibonacci series no : $next\n";
}





my $next1;

my $f1 = 0;
my $s1 = 1;
my $j = 0;


while ($j < $no)	{
	#	print"$j\n";
		if ($j <= 1) {
				$next1 = $j;
		} else {
				$next1 = $f1 + $s1;
				$f1 = $s1;
				$s1 = $next1;
		}
		print"$next1\n";
		$j++;
}






