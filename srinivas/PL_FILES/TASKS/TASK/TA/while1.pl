#!/usr/bin/perl -w
use strict;
my $done = 0;
my $count = 1;

# A program that demonstrates the while statement.

print"print the loop start before\n";

while ($done == 0)	{
		print"the value of count is : $count\n";
		if ($count == 5)	{
				$done = 1;
		}
		$count += 1;
}
print"End of the while loop\n";





