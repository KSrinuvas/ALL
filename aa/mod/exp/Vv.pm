#!/usr/bin/perl
use strict;
use warnings;


use vars qw(@ISA @EXPORT $name @array %hash);
use Exporter;
use AutoLoader;

@ISA = qw(Exporter AutoLoader);


our $name = "ss";
our @array = (1..5);
our %hash = ('a'=>10,'b'=>20);


1;
