#!/usr/bin/perl
use warnings;
use strict;
 
my $counter = 5;
 
until($counter == 0){
   print("$counter \n");
   $counter--;
}


my $c = 0;

until($c > 20)	{
		print"$c\n";
		$c++;
}


my $d = 10;

until ($d == 0)	{
		print"$d\n";
		$d--;
}




my $cc = 0;
my @arr = qw(hello srinu hi good ok bye);
until (!scalar @arr)	{
		$cc++;
		print shift(@arr),"\n";
}

print "$cc elements are removed\n";



