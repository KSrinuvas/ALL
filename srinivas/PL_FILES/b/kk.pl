#!/usr/bin/perl
use strict;
use warnings;
use List::MoreUtils qw(uniq);
my %h;
my @arr = (1,2,3,4,5,6,1,2,3,4,5,6);
print"@arr\n";

my @a;

@h{@arr} = ();

@a =sort(keys %h);
print"@a\n";


sub uni {
		my %hash;
		return grep {!$hash{$_}++}@_;
}
my @abc = uni(@arr);

print"@abc\n";


my @x = uniq(@arr);


print"@x\n";
