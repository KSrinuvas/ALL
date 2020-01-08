#!/usr/bin/perl -w
use strict;

my @arr = qw/b c d a g h e t i o p q l z x m n j t/;
=c
@arr = sort { 
			   				if ($a gt $b)	{
				  					return 1;
				  			} elsif ($a lt $b)	{
					 			 		return -1;
				  			} else {
					  				return 0;
								}
				  	} @arr;

foreach (@arr)	{
		print"$_\n";
}
=cut

foreach (sort {$a cmp $b} @arr)	{
		print"$_\n";
}




