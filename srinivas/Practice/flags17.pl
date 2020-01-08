#!/usr/bin/perl -w
use strict;

## using flages write a simpe program

my $a = 0; ## falg 

sub aa {
		my $ch = shift;
		my @arr = @_;
		foreach (@arr)	{
				if ($_ eq $ch)	{
						$a = 1;
						last;
				} else {
						$a = 0;
				}
		}
		return $a;
}

## fun call

my $c = aa('hi','hello','good','cat','dog','mouse','hi','bye');
print " flage returns $c\n";
my $b = aa('hi','hello','good','cat','dog','mouse','bye');
print " flage returns $b\n";
