#!/usr/bin/perl
use strict;
use warnings;

package Mn;

sub new {
		my $class = shift;
		my $self = {};
		bless $self,$class;
		return $self;
}

sub Mul {
		my $self = shift;
		 
