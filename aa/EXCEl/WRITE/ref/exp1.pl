#!/usr/bin/perl
use strict;
use warnings;

## write excel
use Excel::Writer::XLSX;

my $workbook = Excel::Writer::XLSX->new('exp1.xlsx');

## ADD WORKSHEET NAME HELLO BY defult it will take sheet1...sheetn
my $worksheet = $workbook->add_worksheet('HELLO');

## write a some text 

$worksheet->write(0,0,'Hi Excel');


## write some numbers 

$worksheet->write(1,0,400);
$worksheet->write(2,0,200);
$worksheet->write(3,0,100);



## write some formulas

$worksheet->write( 7,0,'=A3 +A6');

$workbook->close();

