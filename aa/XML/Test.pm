#!/usr/bin/perl
use strict;
use warnings;

package Te;

sub new {
		my $class = shift;
		my $self = { a => shift};
		bless $self,$class;
		return $self;
}
1;

