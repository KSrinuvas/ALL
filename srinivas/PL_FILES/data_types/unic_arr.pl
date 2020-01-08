#!/usr/bin/perl
use strict;
use warnings;

use List::MoreUtils qw(uniq);

my @names = qw(srinu raj ram srinu srinu srinu vas);

my @unic_name = uniq @names;

my @no = (1,2,3,4,5,1,2,3,4,5,1,2,3,4,5);

my @un_no = uniq @no;

print "@un_no\n";

