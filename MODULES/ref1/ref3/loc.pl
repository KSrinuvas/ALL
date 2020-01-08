#!/usr/bin/perl -w
use strict;

sub Data1 {
		local $a = "local var";
		my $a = "hello";	
		Data2();
		Data3($a);
}

sub Data2 {
		print"$a\n";
}

Data1();





### 2

sub Data3 {
		my $ab = shift;
		print "$ab\n";
		print "$a\n";
}

