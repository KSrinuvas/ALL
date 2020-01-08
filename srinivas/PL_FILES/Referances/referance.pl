#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my $arrref = [1..10];

print Dumper($arrref),"\n";


my $hashref = {'a'=>10,'b'=>20};


print Dumper($hashref),"\n";

## deref 

my @arr = @{$arrref};

my %hash = %{$hashref};

print @arr,"\n";

print %hash,"\n";

print Dumper(\%hash),"\n";
print Dumper(\@arr),"\n";


print " ref($arrref)\n";

print " ref($hashref)\n";


### code referance 

my $coderef = sub { print "hello \n"; }







## circular referance 



