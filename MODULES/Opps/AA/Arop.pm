#!/usr/bin/perl
use strict;
use warnings;

package Arop;

sub new {
		my $class = shift;
		my $self = {};
		bless $self, $class;
		return $self;
}

## Add 

sub Add {
		my $self = shift;
		my $res = $_[0] + $_[1];
		return $res;
}


## Sub

sub Sub {
		my $self = shift;
		my $res = $_[0] + $_[1];
		return $res;
}

## Mul
 
sub Mul {
		my $self = shift;
		my $res = $_[0] + $_[1];
		return $res;
}


## Div 

sub Div {
		my $self = shift;
		my $res = $_[0] + $_[1];
		return $res;
}

1;


