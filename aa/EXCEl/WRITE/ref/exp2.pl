#!/usr/bin/perl
use strict;
use warnings;

use Excel::Writer::XLSX;

## work book
my $workbook = Excel::Writer::XLSX->new('bb.xlsx');

## worksheets 

my $worksheet1 = $workbook->add_worksheet('EAST');
my $worksheet2 = $workbook->add_worksheet('WEST');
my $worksheet3 = $workbook->add_worksheet(); ## sheet3
my $worksheet4 = $workbook->add_worksheet(); ## sheet4



## set coloum and row 
my $bold = $workbook->add_format( bold => 1);

$worksheet1->set_column('A:Z', 18,$bold);
$worksheet1->set_row(0,26);
 




## format 

my $format = $workbook->add_format( bold => 2,
																		color => 'red',
																		size => 16,
																		align => 'vcenter');

my $heading = $workbook->add_format(
    bold  => 1,
    color => 'red',
    size  => 20,
    merge => 1,
    align => 'vcenter',
);


my @arr = ("This is the title of the script","","SRINU","","VAS","");
$worksheet1->write('A1',\@arr,$heading);



$worksheet1->write('A2',1);
$worksheet1->write('A3',5);
$worksheet1->write('A4',3);
$worksheet1->write('A5',4);
$worksheet1->write('A6',9);

$worksheet1->set_selection( 'B8' );

$worksheet1->write( 'A8', 'Formulas and functions, "=SIN(PI()/4)"' );
$worksheet1->write( 'B8', '=SIN(PI()/4)' );
 

$workbook->close();

 

