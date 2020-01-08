#!/usr/bin/perl -w
use strict;

use Spreadsheet::WriteExcel;
 
# Create a new Excel workbook
my $workbook = Spreadsheet::WriteExcel->new('perl.xls');
 
# Add a worksheet
my $worksheet = $workbook->add_worksheet();
 
#  Add and define a format
my $format = $workbook->add_format(); # Add a format
$format->set_bold();
$format->set_color('red');
$format->set_align('center');
$format->set_
# Write a formatted and unformatted string, row and column notation.
my $col = my $row = 0;
$worksheet->write($row, $col, 'S.Nosdfgggggggggggggggggggggggggggggggggg', $format);


=c
my $a = 0;

while ($a <= 20)	{
		if ($row == 0 and $col == 0)	{
					$worksheet->write($row, $col, 'S.No', $format);
		} else {
					$worksheet->write($row,$col,$a);
		}
		$a++;
		$row++;
		#$col++;
}
 
=cut

#$worksheet->write(1,    $col, 'Hi Excel!');
 
# Write a number and a formula using A1 notation
#$worksheet->write('A3', 1.2345);
#$worksheet->write('A4', '=SIN(PI()/4)');
