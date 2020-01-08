#!/usr/bin/perl -w
use strict;
use Spreadsheet::WriteExcel;


##------------------------------------------------------------------------------------------------------
## The following example converts a tab separated file called tab.txt into an Excel file called tab.xls.
##------------------------------------------------------------------------------------------------------



## read aa.txt file 

open(TABFILE,'details.csv') || die "Not able to open 'details.txt' $!"; 

my $workbook = Spreadsheet::WriteExcel->new('tab.xls');

my $worksheet = $workbook->add_worksheet('data');

$worksheet->set_column(4,5,12);
# Row and column are zero indexed

my $row = 0;

my $format = $workbook->add_format();

$format->set_color('red');
$format->set_bold();


while (<TABFILE>)	{
			chomp;
			my @fld = split(',',$_);
		
			my $col = 0;
			
			foreach my $tt (@fld)	{
					if ($row == 0 )	{
							$worksheet->write($row,$col,$tt,$format);
							$col++;
							next;
					}
					$worksheet->write($row,$col,$tt);
					$col++;
			}
			$row++;
}

close(TABFILE);




