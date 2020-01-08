#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my %hash = (a=>10,b=>2);
print Dumper(\%hash);

$hash{'a'} = undef;
push(@{$hash{'a'}},4,5,6,7);

print Dumper(\%hash);


splice(@{$hash{'a'}},0,1);
shift(@{$hash{'a'}});

print Dumper(\%hash);

#delete $hash{'a'}->[0];

#splice(@{$hash{'a'}},0,1);

#delete $hash{'a'}->[-1]; ## 7 element undef
#delete $hash{'a'}->[-1]; ## 6 element undef
print Dumper(\%hash);

unshift(@{$hash{'a'}},1,2,3,4,5);

print Dumper(\%hash);


pop(@{$hash{'a'}});

print Dumper(\%hash);


shift(@{$hash{a}});

print Dumper(\%hash);


my @new_array = @{$hash{a}};


foreach (@new_array) {
		print"$_\n";
}




