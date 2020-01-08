#!/usr/bin/perl -w
use strict;

#--------------------------------------------------
## updated an array all elements multipled with 2
#--------------------------------------------------

my @array = (1..10);
print "before an array is : @array\n";
foreach (@array) {
			$_ *=2;
}

print "after updating an array multipled with 2 : @array\n";



## using map function divde an array by 2

map{$_/=2}@array;

print"using map function get as it is before an array is : @array\n";


## adding 2 each element of an array by using for loop


for(my $i = 0; $i < @array;$i++)	{
		$array[$i] +=2;
}
print"adding all elements 2 in an array : @array\n";




## subtrating the 2 each element of an array using while loop

my $j = 0;

while ($j < @array)	{
		$array[$j] -=2;
		$j++;
}

print"subtrating all elements 2 in an array : @array\n";












