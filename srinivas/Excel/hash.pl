#!/usr/bin/perl -w
use strict;
use Spreadsheet::WriteExcel;


##------------------------------------------------------------------------------------------------------
## The following example converts a tab separated file called tab.txt into an Excel file called tab.xls.
##------------------------------------------------------------------------------------------------------


my %hash = ('a' => 10 , 'b' => 20,'c' => 30);




## read aa.txt file 

open(TABFILE,'/home/srm/srinivas/TASKS/details.txt') || die "Not able to open 'details.txt' $!"; 

my $workbook = Spreadsheet::WriteExcel->new('t.xls');

my $worksheet = $workbook->add_worksheet('hash');

$worksheet->set_column(4,5,20);


# Row and column are zero indexed

my $row = 0;

my $format = $workbook->add_format();

$format->set_color('red');
$format->set_bold();
$format->set_align('center');


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












