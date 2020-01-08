#!/usr/bin/perl -w
use strict;

use Getopt::Long;
my %args;
GetOptions(\%args,
           "arg1=s",
           "arg2=s",
           "arg3=s",
) or die "Invalid arguments!";
die "Missing -arg1!" unless $args{arg1};
die "Missing -arg2!" unless $args{arg2};
die "Missing -arg3!" unless $args{arg3};
