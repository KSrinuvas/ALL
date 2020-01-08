#!/usr/bin/perl -w
use strict;

sub aa {
		print"hello\n";
}
aa;


sub bb { 
		my $c = 20;
		return $c;
}
my $aa = bb();
print"$aa\n";

sub cc {
		my @arr = @_;  ## pasing the func arguments 
		print"@arr\n";
}
cc(10,20,30);


sub dd {
		my $size = @_;
		my $sum = 0;
		foreach (@_) {
				$sum+=$_;
		}
		my $avg = $sum/$size;
		return $avg;
}

my $avg1 = dd(10,20,30);
print"average : $avg1\n";



sub ee {
		my $ab = shift;  ## first elemtnt in the passing function argument
		my @ss = @_;    
		return ($ab,\@ss);
}

my ($x,$y) = ee(10,20,30,40);

print"$x\n";
print"@{$y}\n";




sub refe {
		my ($sc,$arr,$ha) = @_;
		print"$sc\n";
	 	print"@{$arr}\n";
		while (my ($k,$v) = each (%{$ha})) {
				print"$k => $v\n";
		}
}

my $pp = 100;
my @array = (1..5);
my %hash = (a=>1,b=>2,c=>3);
## function call
refe($pp,\@array,\%hash);


		





