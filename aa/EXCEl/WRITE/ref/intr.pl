#!/usr/bin/perl
use strict;
use warnings;
use Excel::Writer::XLSX;

my $workbook =  Excel::Writer::XLSX->new("Intro.xlsx");


intro();

$workbook->close();

######################################################################
#
# Intro.
#
sub intro {
 
    my $worksheet = $workbook->add_worksheet( 'Introduction' );
 
    $worksheet->set_column( 0, 0, 60 );
 
    my $format = $workbook->add_format();
    $format->set_bold();
    $format->set_size( 14 );
    $format->set_color( 'blue' );
    $format->set_align( 'center' );
 
    my $format2 = $workbook->add_format();
    $format2->set_bold();
    $format2->set_color( 'blue' );
 
    my $format3 = $workbook->add_format(
        color     => 'blue',
        underline => 1,
    );
 
    $worksheet->write( 2, 0, 'This workbook demonstrates some of', $format );
    $worksheet->write( 3, 0, 'the formatting options provided by', $format );
    $worksheet->write( 4, 0, 'the Excel::Writer::XLSX module.',    $format );
    $worksheet->write( 'A7', 'Sections:', $format2 );
 
    $worksheet->write( 'A8', "internal:Fonts!A1", 'Fonts', $format3 );
 
    $worksheet->write( 'A9', "internal:'Named colors'!A1",
        'Named colors', $format3 );
 
    $worksheet->write(
        'A10',
        "internal:'Standard colors'!A1",
        'Standard colors', $format3
    );
 
    $worksheet->write(
        'A11',
        "internal:'Numeric formats'!A1",
        'Numeric formats', $format3
    );
 
    $worksheet->write( 'A12', "internal:Borders!A1", 'Borders', $format3 );
    $worksheet->write( 'A13', "internal:Patterns!A1", 'Patterns', $format3 );
    $worksheet->write( 'A14', "internal:Alignment!A1", 'Alignment', $format3 );
    $worksheet->write( 'A15', "internal:Miscellaneous!A1", 'Miscellaneous',
        $format3 );
 
}
 
 
