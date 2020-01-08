#!/usr/bin/perl 
use strict;
use warnings;

package Var;
#use vars qw(@ISA @EXPORT $var1 %hash @arr);
#use vars qw($var1 %hash @arr);

use Exporter;


our @ISA    = qw(Exporter);
#our @EXPORT_OK = qw(sub1 $var1 %hash @arr);

our @EXPORT = qw(sub1 $var1 %hash @arr);





sub sub1 {
		my ($a,$b) = @_;
		my $ss = $a+$b;
		return $ss;
}

our $var1 = 1000;


our %hash = ('a'=>10,'b'=>20,'c'=>30);
our @arr = (1..5);



1;
