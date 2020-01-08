#!/usr/bin/perl 
use strict;
use warnings;

package Fg; 

use Exporter;

our @ISA = qw(Exporter);

our @EXPORT = qw(div);

sub div {
		my ($a,$b) = @_;
		my $dd = $a/$b;
		return $dd;
}



package AA;

#use Exporter;

our @ISA = qw(Exporter);

#our @EXPORT = qw(mul);

our @EXPORT_OK = qw(mul);

sub mul {
		my ($c,$d) = @_;
		my $ee = $c*$d;
		return $ee;
}

1;

