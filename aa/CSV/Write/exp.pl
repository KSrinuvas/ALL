#!/usr/bin/perl
use strict;
use warnings;


use Text::CSV;

my $csv = Text::CSV->new();

my @records = ([1,2,3,4],[5,6,7,8],[9,10,11,12]);
# Specify newline as CR+LF 
$csv->eol ("\r\n");

# Open a handle to the file "new.csv"
open my $fh, ">:encoding(utf8)", "new.csv" or die " new.csv: $!";

foreach (@records) {
		print "$_\n";
		$csv->print ($fh, $_);
}
#$csv->print ($fh, $_) for @records;
close $fh or die "new.csv: $!";

