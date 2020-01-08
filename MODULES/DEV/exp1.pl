#!/usr/bin/perl
use strict;
use warnings;

use Spreadsheet::ParseExcel;


my ($hash,@header,@datarow);

## read excel sheet data

my $parser = Spreadsheet::ParseExcel->new();

my $workbook = $parser->parse('/home/srm/srinivas/Excel/tab.xls');

if ( !defined $workbook) {
		die parser->error(),"\n";
}

for my $worksheet ($workbook->worksheets())	{
#		print "$worksheet\n";
		my ($row_min,$row_max) = $worksheet->row_range();
		my ($col_min,$col_max) = $worksheet->col_range();
		
		for my $row ($row_min..$row_max) {
					my $this_set = {};
					my $pri_key;
					for my $col ($col_min..$col_max) {
								my $cell = $worksheet->get_cell($row,$col);
								if (defined $cell) {
										my $dd = $cell->value();
										#$datarow[$col] = $dd unless ($dd eq '');
										 unless ($dd eq '') {
													$datarow[$col] = $dd;
										 }
								} else {
										next;
								}
								## header 
								if ($row == 0) {
											$header[$col] = $datarow[$col];
								} else {
											if ($col == 0) {
														$pri_key = $datarow[$col];
											} else {
														my $key = $header[$col];
														my $val = $datarow[$col];
														$this_set->{$key} = $val;
											}
								}
					}
					if ($row > 0) {
								push @{$hash->{$pri_key}},$this_set;
					}
		}
}



use Data::Dumper;

print Dumper($hash);











