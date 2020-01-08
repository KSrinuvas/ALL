#!/usr/bin/perl -w
use strict;
use Spreadsheet::WriteExcel;
 

my $workbook = Spreadsheet::WriteExcel->new('hello.xls');

my $worksheet = $workbook->add_worksheet('TEST DATA1');


 
#  Add and define a format
my $format = $workbook->add_format(); # Add a format
$format->set_bold();
$format->set_color('red');
$format->set_align('center');
 
# Write a formatted and unformatted string, row and column notation.
my ($col,$row) = 0;
$worksheet->write($row, $col, 'Hi Excel!', $format);
$worksheet->write(1,    $col, 'Hi Excel!');
 
# Write a number and a formula using A1 notation
$worksheet->write('A3', 1.2345);
$worksheet->write('A4', '=SIN(PI()/4)');

