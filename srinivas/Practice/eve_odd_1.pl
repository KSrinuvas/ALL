#!/usr/bin/perl -w
use strict;

my @array = (1..20);

## using foreach loop

print "\nUSING FOREACH LOOP\n\n";

foreach my $a (@array)	{
		if ($a%2==0)	{
				next;
		}
		print "only odd no:$a\n";
}


## using for loop

print "\nUSING FOR LOOP\n\n";

for (my $i =0; $i < @array;$i++)	{
		if ($array[$i]%2!=0)	{
				next;
		}
		print " even no : $array[$i]\n";
}


print "\nUSING WHILE LOOP\n\n";
## using while loop

my $j = 0;
my $last_index = $#array;

while ($j <= $last_index)	{
		if ($array[$j]%2==0) {
				print"even no : $array[$j]\n";
		}
		$j++;
}

