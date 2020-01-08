#!/usr/bin/perl -w
use strict;
use Getopt::Long;
##-------------------------------
## split and join functions 
##-------------------------------


my @libfiles;


GetOptions ("library=s" => \@libfiles);
@libfiles = split(/,/,join(',',@libfiles));

print"@libfiles\n";


### example 

perl split_join_op.pl -library aa.txt -library a.txt -library file.pl

### the array prints 

aa.txt a.txt file.pl

