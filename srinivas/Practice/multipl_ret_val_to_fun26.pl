#!/usr/bin/perl -w
use strict;

##-------------------------------------------------------------------
##  return the multiple values to the function 
##-------------------------------------------------------------------



sub hello {
		my @arr = (1,2,3,4);
		my $str = "hello";
		my %hash = ('a' => 10,'b' => 20);
		return ($str,\@arr,\%hash);
}

## return values 

my ($ss,$arr_ref,$hash_ref) = hello();		

print"string is : $ss\n";
print"array value is : @{$arr_ref}\n";

while (my ($k,$v) = each (%{$hash_ref}))	{
		print" $k => $v\n";
}




