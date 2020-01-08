#!/usr/bin/perl -w
use strict;


print avg(1..10),"\n";

sub avg {
		my $size = @_;
		my $avg = 0;
		my $sum = 0;
		foreach (@_)	{
					$sum +=$_;
		}
		$avg = $sum/$size;
		my $p = aa($avg);
		print"$p\n";
		return $avg;
}

my $code_ref = \&avg;

print &$code_ref(1..10),"\n";



sub aa {
		my $a = shift;	
		return $a;	
}






