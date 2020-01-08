#!/usr/bin/perl -w
use strict;


##-------------------------------------------------------------------
## write a simple program using loop control statements last and next
##-------------------------------------------------------------------

my @arr = ('hi','hello','hi','good','bad');


## i want beofre good elements 

foreach (@arr)	{
		if ($_ eq 'good')	{
				last;
		}
		print"$_\n";
}

print"\n\n";
## i want without hi remaning elements  

foreach (@arr) {
		if ($_ eq 'hi') {
				next;
		}
#		print"$_\n";
}



## i want only good and bad elements 

for (my $i = 0; $i < @arr;$i++)	{
		if (($arr[$i] eq 'good') or ($arr[$i] eq 'bad'))	{
				print"$arr[$i]\n";
		}
}
	

print"\n\n";

## i want without good and bad elements 


my $j = 0;
while ($j < @arr)	{
		if ( ($arr[$j] eq 'good') or ($arr[$j] eq 'bad') )	{
				next;
		}
		print"$arr[$j]\n";
		$j++;
}







