#!/usr/bin/perl -w
 
use strict;
use Excel::Writer::XLSX;
 
my $workbook  = Excel::Writer::XLSX->new( 'example.xlsx' );
my $worksheet = $workbook->add_worksheet();
 
# Set the default format for dates.
my $date_format = $workbook->add_format( num_format => 'mmm d yyyy' );
 
# Increase column width to improve visibility of data.
$worksheet->set_column( 'A:C', 20 );
 
# Simulate reading from a data source.
my $row = 0;
 
while ( <DATA> ) {
    chomp;
 
    my $col  = 0;
    my @data = split ' ';
 
    for my $item ( @data ) {
 
        # Match dates in the following formats: d/m/yy, d/m/yyyy
        if ( $item =~ qr[^(\d{1,2})/(\d{1,2})/(\d{4})$] ) {
 
            # Change to the date format required by write_date_time().
            my $date = sprintf "%4d-%02d-%02dT", $3, $2, $1;
 
            $worksheet->write_date_time( $row, $col++, $date,
                $date_format );
        }
        else {
 
            # Just plain data
            $worksheet->write( $row, $col++, $item );
        }
    }
    $row++;
}
 
$workbook->close();
 
__DATA__
Item    Cost    Date
Book    10      1/9/2007
Beer    4       12/9/2007
Bed     500     5/10/2007
