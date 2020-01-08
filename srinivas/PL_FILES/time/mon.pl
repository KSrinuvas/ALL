#!/usr/bin/perl
use strict;
use warnings;
my @years = (1..3000);
my @months = qw/Jan Feb Mar Apr May Jun Jul Aug Sep Oct Num Dec/;
my @days = qw/Sun Mon Tue Wed Thr Fri Sat/;
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

print " $mday $months[$mon]   $days[$mday]  $years[$year]\n";

