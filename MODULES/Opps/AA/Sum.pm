#!/usr/bin/perl
use strict;
use warnings;

## package name is Sum

package Sum;

sub new {
		my $class = shift;
		my $self = {};
		bless $self,$class;
		return $self;
}

sub Add {
		my $self = shift;
		my $sum = 0;
		$sum +=$_ foreach(@_); 
		return $sum;
}


package Sum1;


sub new {
		my $class = shift;
		my $self = {};
		bless $self,$class;
		return $self;
}

sub Add {
		my $self = shift;
		my $sum = 0;
		$sum +=$_ foreach(@_); 
		return $sum;
}

1;
