#!/usr/bin/perl -w
use strict;

## To print the pyramid

my $var = 10;
my @arr = (1..10);

print "   USING FOREACH LOOP\n\n";
foreach my $x (@arr)	{
		if ($x%2==0)	{
				next;
		}
		#print"$x\n";
		my $pp = " " x $var."*" x $x;
		print"$pp\n";
		$var--;
}


print "\n   USING FOR LOOP\n\n";

## using for loops 
my $var1 = 10;

for(my $i=0;$i < @arr;$i++)	{
		next if ($arr[$i]%2==0);	
		my $kk = " " x $var1."#" x $arr[$i];
		print"$kk\n";
		$var1--;
}


print "\n   USING WHILE LOOP\n\n";
my $j = 0;
my $var2 = 10;
while ($j < @arr)	{
		#next if ($arr[$j]%2!=0);
		if ($arr[$j]%2!=0)	{
				#print"$arr[$j]\n";
				my $qq = " " x $var2 . "^" x $arr[$j];
				print"$qq\n";
				$var2--;
		}
		$j++;
}







print "\n    USING dO WHILE LOOP\n\n";


my $m = 0;
my $var3 = 10;

do {
		if ($arr[$m]%2==0) {
				my $nn = " " x $var3. "@" x $arr[$m];
				print"$nn\n";
				$var3--;
		}
		$m++;
} while($m <= $#arr);


















				
