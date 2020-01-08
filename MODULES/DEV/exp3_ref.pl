#!/usr/bin/perl
use strict;
use warnings;
use Spreadsheet::ParseExcel;
use DBI;

## read excel sheet data
my $parser = Spreadsheet::ParseExcel->new();
#my $workbook = $parser->parse('/home/srm/srinivas/Excel/tab.xls');
my $workbook = $parser->parse('/home/srm/Downloads/test.xls');
 
if ( !defined $workbook) {
    die parser->error(),"\n";
}
my ($Main_ref,@datarow,@header);;

foreach my $worksheet ( $workbook->worksheets() ) {
		my $w_name = $worksheet->get_name();
	#	print "$w_name,\n";
		next if ($w_name !~ /installed/i);
		my ($row_min,$row_max) = $worksheet->row_range();
		my ($col_min,$col_max) = $worksheet->col_range();
		
		foreach my $row ($row_min..$row_max) {
				my $hash_ref;
				my $pri_key;
				foreach my $col ($col_min..$col_max) {
							my $cell = $worksheet->get_cell($row,$col);
							
							if (defined $cell) {
										my $val = $cell->value();
										next if ($val eq '');
								#		print "$val\n";	
										$datarow[$col] = $val;
							} else {
										next;
						  }
							## header 
							if ($row == 0) {
										$header[$col] = $datarow[$col];
							} else {
										if ($col == 4)	{
													$pri_key = $datarow[$col];
										} else {
													$hash_ref->{$header[$col]} = $datarow[$col];	
										}
							}
				}
				if ($row > 0) {
						#	push @{$Main_ref->{$pri_key}},$hash_ref;
							$Main_ref->{$pri_key} = $hash_ref;
			  }	
		}
}
use Data::Dumper;
#print Dumper($Main_ref);







## databaes write 
my $dsn = "DBI:mysql:FTOS";

my $user = "root";
my $pw = "srm";

my %attr = (PrintError => 0,
            RaiseError => 1);

my $dbh = DBI->connect($dsn,$user,$pw,\%attr);

#print"success\n";

## create table


my $sth;

while (my ($k1,$v1) = each (%{$Main_ref}) ) {
		print "$k1=>\n";
		if (ref($v1) eq 'HASH') {
				while (my ($k2,$v2) = each ( %{$v1} ) ) {
					#	print "    $k2 => $v2\n";
						my @ddl = (
        							"CREATE TABLE DATA5 (Sno int(250) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                	            #VTS_DEVICE_NO VARCHAR(255) NOT NULL,
                  	          NAME VARCHAR(250) NOT NULL
        								)" );
																		
						foreach my $aa (@ddl) {
 							   $dbh->do($aa);
						}
							
						$sth = $dbh->prepare("INSERT INTO DATA5
                       (NAME)
                        values
                       (?)");
	   				$sth->execute($v2)
            			or die $DBI::errstr;
				}
		}
}



$sth->finish();

$dbh->disconnect();










