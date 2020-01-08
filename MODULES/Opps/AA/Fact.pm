#!/usr/bin/perl
use strict;
use warnings;


package Fact;

sub new { 
		my $class = shift;
		my $self = {};
		bless $self,$class;
		return $self;
}


sub Fac {
		my $self = shift;
		my $fa = 1;
		my $f2 = 1;
		my $no = shift;
		while ($fa <= $no)	{
				$f2 *= $fa;
				$fa++;
		}
		return $f2;
}

1;

				
		
