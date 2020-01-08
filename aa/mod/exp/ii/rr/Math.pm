#!/usr/bin/perl
use strict;
use warnings;


package sum;

use Exporter;

our @ISA = qw(Exporter);

#our @EXPORT_OK = qw(aa);
our @EXPORT = qw(aa);



sub aa {
			my ($a,$b) = @_;
			my $sum = $a+$b;
			return $sum;
}



package mul;

our @ISA = qw(Exporter);

our @EXPORT = qw(bb);


sub bb {
		my ($c,$d) = @_;
		my $mul = $c * $d;
		return $mul
}
1;
