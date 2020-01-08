#!/usr/bin/perl 
use strict;
use warnings;

package Eak;

require Exporter;


# base class of this(Eak) module
our @ISA = qw(Exporter);

# Exporting the add and subtract mul div routine
our @EXPORT_OK = qw(add subt mul div);







sub add {
		my ($a,$b) = @_;
		my $sum = $a+$b;
		return $sum;
}

sub mul {
		my ($c,$d) = @_;
		my $mm = $c * $d;
		return $mm;
}



sub div {
		my ($e,$f) = @_;
		my $rr = $e / $f;
		return $rr;
}


sub subt {
		my ($s,$t) = @_;
		my $yy = $s - $t;
		return $yy;
}

		

1;



