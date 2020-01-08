#!/usr/bin/perl
use strict;
use warnings;
open(IN,'l3.txt') || die "Not able to open l3.txt file $!";
while (my $line = <IN>) {
		chomp($line);
		first($line);
		la($line);
		ok($line);
		ok1($line);
}

sub first {
			my $l1 = shift;
			if ($l1 =~ /\A(.*?) /) {
	#				print"$&\n";
			}
}
sub la {
		my $l2 = shift;
		if ($l2 =~ /\w+$/) {
#				print"$&\n";
		}
}

my @arr;
sub ok {
		my $str = shift;
		push(@arr,$str =~ /^(.*?) /);
}

my @laa;
sub ok1 {
		my $str1 = shift;
	  if ($str1 =~ /\w+$/) {
				push(@laa,$&);
		}
}
print"first coloumn : @arr\n";
print"last coloumn  : @laa\n";
close(IN);
