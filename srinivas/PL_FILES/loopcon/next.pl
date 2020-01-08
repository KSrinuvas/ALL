#!/usr/bin/perl
use strict;
use warnings;


my @arr = (1,2,3,4,5,6);

# last 

foreach (@arr)	{
#			print"@arr\n";
			if ($_ == 3)	{
					$_+=1;
					last;
					
			}
#			print "$_\n";
			$_+=1;

}




my $a = 10;
while ($a < 20)	{
				if ( $a == 15)	{
						 $a+=1;
							next;
				}
#				print "$a\n";
				$a+=1;
}






my @aa = (1,2,3,4,5,6,7,8,9);

foreach (@aa)	{
				if ($_ == 5)	{
						$_+=1;
						next;
				}
				print "$_\n";
				$_+=1;
}











###### last 
my @ab = ("srinu","vas","gg","hhj");

foreach (@ab)	{
			if ($_ eq "gg")	{
					$_.=1;
					next;
			}
			print "$_\n";
			$_.=1;
}


