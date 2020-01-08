#!/usr/bin/perl
use strict;
use warnings;

package EXT; 
use Exporter;

our @ISA = qw(Exporter);

#our @EXPORT = qw();

our @EXPROT_OK = qw();


sub new {
	my $class = shift;
	my $self = {'a' => shift,
		'b' => shift
				};
	return bless $self,$class;
}


sub Add {
	my ($self) = @_;
	my $sum = $self->{'a'} + $self->{'b'};
	return $sum;
}

sub Mul {
	my ($self) = @_;
	my $mul = $self->{'a'} * $self->{'b'};
	return $mul;
}

1;

