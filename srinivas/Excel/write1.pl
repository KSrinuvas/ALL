#!/usr/bin/perl -w
use strict;



=c
use Spreadsheet::WriteExcel;

my $workbook = Spreadsheet::WriteExcel->new('ok.xls');

my $worksheet = $workbook->add_worksheet();

## format 

my $format = $workbook->add_format();

$format->set_bold();
$format->set_color('red');

$worksheet->write(0,0,"hello this is srinu sddsgdsgdgd asgh dshf asg ",$format);


autofit_columns($worksheet);
=cut

use Spreadsheet::WriteExcel::Extended::FitColumnWidth;

my @headings;
my $workbook = Spreadsheet::WriteExcel::Extended::FitColumnWidth->new({
      filename => 'filename.xls',
      sheets   => [
          { name => 'Test Data', headings => \@headings},
          { name => 'Sheet Number 2', headings => [ 'Component', 'Component Description' ]}
          ],
      font      => 'path/to/default/ttf',      # optional, defaults to 'c:\windows\fonts\arial.ttf'
      font_bold => 'path/to/header_row/ttf'   # optional, defaults to 'c:\windows\fonts\arialbd.ttf'
      });


