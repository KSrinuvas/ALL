#!/usr/bin/perl
use strict;
use warnings;


## 1]
my $p = 500;
sub aa {
		local $a = 100;
		bb();
}

sub bb {
		print"$a\n";
}
aa();

## 2]

sub ab {
		print"$p\n";
}
ab();



## 3] 
sub gg {
		my $p = $_[0];
		print"$p\n";
		print"@_\n";
}
gg(10,20,30,40);




sub sum {
		my @arr  = @_;  
		local $a = $arr[0];
		local $b = $arr[1];
		my $sum = $a+$b;
		print"sum of two elements : $sum\n";
		mul();
}

sub mul {
			my $mul = $a*$b;
			print"multiplication of two numbers : $mul\n";
			div();
}

sub div {
			my $ddd = $a/$b;
			print"division of two no's : $ddd\n";
			print"ok\n";
			ss();
}

sub ss {
		my $sb = $a-$b;	
		print"subtration of two elements is : $sb\n";
}



sum(20,10);




