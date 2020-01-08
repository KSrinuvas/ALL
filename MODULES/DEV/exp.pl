#!/usr/bin/perl
use strict;
use warnings;

use Spreadsheet::ParseExcel;


my $hash;

## read excel sheet data



my $parser = Spreadsheet::ParseExcel->new();

my $workbook = $parser->parse('/home/srm/srinivas/Excel/tab.xls');


if ( !defined $workbook) {
		die parser->error(),"\n";
}

my $kk = undef;
my @header;
for my $worksheet ($workbook->worksheets())	{
#		print "$worksheet\n";
		my ($row_min,$row_max) = $worksheet->row_range();
		my ($col_min,$col_max) = $worksheet->col_range();
		
		for my $row ($row_min..$row_max) {
					for my $col ($col_min..$col_max) {
								my $cell = $worksheet->get_cell($row,$col);
								#print "$cell\n";
								my $dd = $cell->value();
							#	print "row and col : ($row,$col)\n";
					    # print "Value       = ", $cell->value(),       "\n";
					    # print "Unformatted = ", $cell->unformatted(), "\n";
								if ($col == 0) {
										$kk = $dd;		
								} elsif ($col == 0)	{
										push(@header,$dd);
								}
					}
		}
}

shift(@header);


print "@header\n";

