#!/usr/bin/perl 
use strict;
use warnings;

package Arithmetic;

use Exporter;

# base class of this(Arithmetic) module
my @ISA = qw(Exporter);

# Exporting the add routine
my @EXPORT = qw(add);


# Exporting the multiply and divide  routine on demand basis.
#@EXPORT_OK = qw(multiply divide);

sub add	{
		my ($no1,$no2) = @_;
		my $result;
		$result = $no1+$no2;
		return $result;
}
1;



