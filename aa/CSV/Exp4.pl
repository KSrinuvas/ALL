#!/usr/bin/perl
use strict;
use warnings;

use Text::CSV;

## read csv file and build the dynamic hash
my $csv = Text::CSV->new({sep_char => ','});

#my $csv = Text::CSV->new({ sep_char => ',' });



my $file = $ARGV[0] or die;

## read file 

open(IN,$file) or die "not able to open '$file' $!";

my @head;
my $hash;
my $hh = <IN>;
chomp($hh);

if ($csv->parse($hh)) {
		@head = $csv->fields();
}

shift(@head);

while (my $line = <IN>) {
		chomp($hh);
		if ($csv->parse($line) ) {
				my @data = $csv->fields();
				my $pri_key = shift(@data);
				if (@head == @data) {
						for(my $i = 0; $i < @head; $i++)	{
								$$hash{$pri_key}{$head[$i]} = $data[$i];
						}
				}	else {
					 warn "Line could not be parsed : $line\n";
				}			
		}
}

use Data::Dumper;

print Dumper($hash);







## Excel Write 

use Excel::Writer::XLSX;

use Excel::Writer::XLSX;

# Create a new workbook called simple.xls and add a worksheet
my $workbook  = Excel::Writer::XLSX->new( 'a_simple.xlsx' );
my $worksheet = $workbook->add_worksheet();

# The general syntax is write($row, $column, $token). Note that row and
# column are zero indexed
#

# Write some text
$worksheet->write( 0, 0, "Hi Excel!" );


# Write some numbers
$worksheet->write( 2, 0, 3 );          # Writes 3
$worksheet->write( 3, 0, 3.00000 );    # Writes 3
$worksheet->write( 4, 0, 3.00001 );    # Writes 3.00001
$worksheet->write( 5, 0, 3.14159 );    # TeX revision no.?


# Write some formulas
$worksheet->write( 7, 0, '=A3 + A6' );
$worksheet->write( 8, 0, '=IF(A5>3,"Yes", "No")' );


# Write a hyperlink
my $hyperlink_format = $workbook->add_format(
    color     => 'blue',
    underline => 1,
);

$worksheet->write( 10, 0, 'http://www.perl.com/', $hyperlink_format );

__END__
