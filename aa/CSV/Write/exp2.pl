#!/usr/bin/perl -w
use strict;
use warnings;
use Text::CSV;

my $infile = 'input.csv';
my $outfile = 'output.csv';

my $csv = Text::CSV->new();

open (CSV, "<", $infile) or die $!;
open (FH, ">", $outfile) or die "$!";

while (<CSV>) {
    if ($csv->parse($_)) {
        my @columns = $csv->fields();
				
**** bunch of manipulation code ****

     print FH "$col1,$col2,$col3,$col4,$col5,$col6...$col36\n";

     else {
        my $err = $csv->error_input;
        print "Failed to parse line: $err";
        }
}

close FH;
close CSV;
