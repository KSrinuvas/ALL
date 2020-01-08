#!/usr/bin/perl -w
use strict;

####===----------------------------------------------===####
####===--           FIBONACCI SERIES               --===####
####===----------------------------------------------===####

print"Enter the fibonacci series x : ";

my $no = <STDIN>;
chomp($no);

my $next;
my $f = 0;
my $s = 1;

my $i = 0;

while ($i < $no)	{
		if ($i <= 1)	{
					$next = $i;
		} else {
					$next = $f + $s;
					$f = $s;
					$s = $next;
		}
		print "fibonacci series : $next\n";
		$i++;
}





####===----------------------------------------------===####
####===--           FACTORIAL NUMBER               --===####
####===----------------------------------------------===####


print"Enter the factorial of x : ";
my $num = <STDIN>;
chomp($num);

my $aa = 1;
my $fac = 1;

while ($aa <= $num) {
	#	print"$aa\n";
		$fac *= $aa;
		$aa++;
}
print "Factorial of $num is : $fac\n";








