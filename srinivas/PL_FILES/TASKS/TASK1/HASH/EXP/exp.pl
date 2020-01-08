#!/usr/bin/perl -w
use strict;


my @arr = (1,2,2,3,4,5,6,4,1,1,1,2,2,2,3,4,5,6);

my %hash;


@hash{@arr} = ();

@arr = sort(keys %hash);
#print"@arr\n";

my @data = (1,4,6,1,1,1,2,3,4,5,6);
#print"@data\n";
my @unique = do { my %seen; grep {!$seen{$_}++ } @data };

#print"@unique\n";


my @words = qw(hello hi hello hi good hi hello);

my @unique;
my %seen;
 
foreach my $value (@words) {
  if (! $seen{$value}) {
    push @unique, $value;
    $seen{$value} = 1;
  }
}

#print"@unique\n";



my @unique1;
my %seen1;
 
foreach my $value1 (@words) {
  unless($seen1{$value1}++ ) {
    push @unique1, $value1;
  }
}

#print"@unique1\n";


my %seen2;
my @aa = grep { !$seen2{$_}++ } @words;

#print"@aa\n";


my %seen3;

my @data1 = qw(a b a b a b a b d d a f g d c);
my @unique2 = keys { map { $_ => 1 } @data1 };

print"@unique2\n";
my @unique3;
foreach (sort @data1)	{
			next if ($seen3{$_}++);
			push(@unique3,$_);
}

print"@unique3\n";
			




