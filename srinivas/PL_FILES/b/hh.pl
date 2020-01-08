#!/usr/bin/perl -w
use strict;

my %hash = ('pri' => {'first' => 10,'second' => 20},'sec' => {'frist' => 30,'second' => 40});

my %hash1 = %hash;

while (my ($k,$v) = each (%hash))	{
		print" $k => $v\n";
}

print"\n\n";

$hash{'sec'} = 100;


while (my ($k1,$v1) = each (%hash))	{
		print" $k1 => $v1\n";
}

print"\n\n";

$hash{'pri'} = 10;

while (my ($k2,$v2) = each (%hash)) {
		print " $k2 => $v2\n";
}


use Data::Dumper;
print Dumper(\%hash1);

print Dumper(\%hash);

my $hash_Ref = \%hash;

$hash_Ref->{'aa'} = 100;
$hash_Ref->{'bb'} = 200;
$hash_Ref->{'cc'} = 300;

print Dumper (\%hash);

print Dumper ($hash_Ref);


$hash_Ref->{'pri'} = 001;
$hash_Ref->{'sec'} = 002;

print Dumper (\%hash);


print Dumper ($hash_Ref);


$hash{'aa'} = 4;
$hash{'bb'} = 2;

#print Dumper ($hash_Ref);

my $hash_hash = {'aa' => {'bb' => {'cc' => 100}}};

my $hash_hash1 = $hash_hash;
print Dumper ($hash_hash);

my $hash_hash->{'zz'} = 100;

print Dumper ($hash_hash);

print Dumper ($hash_hash1);

$hash_hash1->{'zz'} = 200;

print Dumper ($hash_hash1);

print Dumper ($hash_hash);




