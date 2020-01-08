#!/usr/bin/perl 
use strict;
use warnings;

package YourModule;

require Exporter;

our @ISA = qw(Exporter);

our @EXPORT = qw(add);


=c
# base class of this(Arithmetic) module
our @ISA = qw(Exporter);
# Exporting the add and subtract routine
our @EXPORT = qw(add);
=cut








sub add {
		my ($a,$b) = @_;
		my $sum = $a+$b;
		return $sum;
}
1;



