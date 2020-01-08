#!/usr/bin/perl
use strict;
use warnings;
use Excel::Writer::XLSX;

my $excel = Excel::Writer::XLSX->new('aa.xlsx');

my $sheet = $excel->add_worksheet('hello');



$sheet->set_column( 'B2:D2', 50);
#$sheet->set_column( 'C:C', 20);
$sheet->set_row( 0, 40 );




$sheet->write('A1',10);
$sheet->write('A2',10);
$sheet->write('A3',10);
$sheet->write('A4','=SUM(A1:A3)');




 
 
 

