#!/usr/bin/perl -w
use strict;
use warnings;

my $data1 = {'a',1,'b',22,'c',33};
my $data2 = {'a',10,'b',30,'c',40};

my $eq = 1;

if (keys %{$data1} == keys %{$data2})	{
		foreach my $kk (keys %{$data1})	{
				if (!exists $$data2{$kk})	{
						$eq = 0;	
						last;
				}
		}
}

if ($eq) {
		print "TWO HASH KEYS ARE EQ\n";
} else {
		print "TWO HASHS KEYS ARE NOT EQ\n";
}

