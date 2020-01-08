#!/usr/bin/perl -w
use strict;

##------------------------------------------------------------------------------------------
##  Write a program sum of all the array elements using (1) foreach (2) for (3) while loop
##------------------------------------------------------------------------------------------

sub sum {
		my @arr = @_;
		my $sum = 0;
		## using foreach loop
		foreach my $a (@arr) {
				$sum +=$a;
		}
		## using for loop
		my $sum1 = 0;
		for (my $i = 0; $i < @arr; $i++)	{
				$sum1 += $arr[$i];
		}

		# using while loop
		my $j = 0;
		my $sum2 = 0;
		while ($j < @arr)	{
				$sum2 += $arr[$j];
				$j++;
		}
		return ($sum,$sum1,$sum2);
}

my ($s1,$s2,$s3) = sum(1..10);

print "using foreach loop sum : $s1\n";
print "using for loop sum     : $s2\n";
print "using while loop sum   : $s3\n";

			
		
					
						

