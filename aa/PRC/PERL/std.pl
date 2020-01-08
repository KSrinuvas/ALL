#!/usr/bin/perl
use strict;
use warnings;
=c
my $ii = <STDIN>;

chomp($ii);

#print ($ii);


my @arr = ();
my $i = 0;
while ($i < $ii) {
	print "$i\n";
	push(@arr,$i);
	$i++;
}

## 

my $fe = shift(@arr);

print "rem first ele : $fe\n";


print "@arr\n";

=cut



## cmd arg 
## avg 
sub Avg {
	my $ref = shift;
	my $sum = 0;
	my $len = 0;
	my $avg = 0;
	foreach my $k (@{$ref})	{
		$sum +=$k;
		$len++;
	}
	$avg = $sum/$len;
	print "$avg\n";
	return ($avg);
	
}

## function call

my $ss = Avg(\@ARGV);

print "avg : $ss\n";




















