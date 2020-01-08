#!/usr/bin/perl -w
use strict;

my %hash = ('a'=> 10,'b' => 20);

## accessing keys in a hash using keys 

my @key = keys %hash;
my @value = values %hash;

my $size = @key;
my $size1 = scalar @value;

print "size of hash is : $size\n";
print "size of hash is : $size1\n";


foreach my $item (keys %hash) {
		if (exists $hash{$item})	{
				print"$item => $hash{$item}\n";
		}
}




## updateing hash 

$hash{'a'} = 100;

## adding keys to the hash

$hash{'c'} = 300;

$hash{'d'} = 400;


## deleting the hash  key

delete $hash{'d'};


while (my ($k,$v) = each (%hash))	{
		print" $k => $v\n";
}



