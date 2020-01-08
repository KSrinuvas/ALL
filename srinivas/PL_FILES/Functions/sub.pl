#!/usr/bin/perl
use strict;
use warnings;

sub hello {
		print "this is srinu\n";
}

## call function 
hello();



my $a = 20;
my $b = 40;
my $sum;
sub sum {
		$sum = $a+$b;
		return $sum;
}

$sum = sum();

print "$sum\n";





###function arguments 

sub ss {
		my @a = @_;
		print "@a\n";
}
ss(10,20,30,40,50);


###sum of all values 
my $c = 0;
sub sss	{
		my @aa = @_;
		foreach (@aa)	{
					$c +=$_;
		}
		return $c;
}

$c = sss(10,20,30,40,50,60,70,80);

print "sum of array : $c\n";


## avg value 



my $rr = 0;
my @vv;
my $avg;
my $size;
sub avg {
		@vv = @_;
		$size = @vv;
		foreach (@vv)	{
				$rr+=$_;
				$avg = $rr/$size;
		}
		return $avg;
}

$avg = avg(@ARGV);

print "average of list : $avg\n";

				









## 
my @qq;
sub hh {
		my @qq = @_;
		print "@qq\n";
}

hh(1..20);




			



			


















