#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

## referance 
my $ann_hash = {{'a'=>1,'b'=>20,'c'=>40},{'name'=>'srinu','city'=>'bng'}};

## dereferane 
my %hash;
%hash = %{$ann_hash};

#print Dumper(\%hash),"\n";







