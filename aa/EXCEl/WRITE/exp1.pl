#!/usr/bin/perl
use strict;
use warnings;
use Excel::Writer::XLSX;

my $file = 'Em1.txt';

open(IN,"$file") || die "Not able to open '$file' $!";

my $workbook  = Excel::Writer::XLSX->new( 'em1.xlsx' );
my $worksheet = $workbook->add_worksheet();
 


my $format = $workbook->add_format();
$format->set_color('red');

 
# Increase column width to improve visibility of data.
$worksheet->set_column( 'A:E', 15 );



# Simulate reading from a data source. 
my $row = 0;
 
while ( <IN> ) {
    chomp;  
 
    my $col  = 0;
   # my @data = split ',';
   	my @data = split ' ';
 
    for my $item ( @data ) {
          # Just plain data
          $worksheet->write( $row, $col++, $item,$format);
    }
    $row++; 
}
 
$workbook->close();
 


close(IN);












		





