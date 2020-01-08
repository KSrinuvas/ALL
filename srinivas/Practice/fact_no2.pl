#!/usr/bin/perl -w
use strict;

print "enter the factorial no x : ";
my $no = <STDIN>;
chomp($no);

my $fact = 1;
## using forloop

for (my $i = 1; $i <= $no;$i++)	{
		$fact *=$i;
}
print "factorial of $no is $fact\n";


## using while loop

my $fa = 1;
my $j = 1;
while ($j <= $no)	{
		$fa *=$j;
		$j++;
}
print "factorial of $no is $fa\n";



## using do while loop

my $fac = 1;
my $k = 1;

do {
		$fac *=$k;
		$k++;
} while($k <= $no);

print "factorial of $no is $fac\n";



## using foreach loop

my $ff = 1;

foreach (1..5)	{
		$ff *=$_;
}
print "factorial of $no is $ff\n";
