#!/usr/bin/perl
use strict;
use warnings;

package Calc;

sub new {
		my $class = shift;
		my $self = {};
		bless ($self,$class);
		return $self;
}

sub add {
		my $self = shift;
		my $sum = 0;
		$sum += $_ foreach (@_);
		$self->{'sum'} = $sum;
		return $sum;
}

1;





