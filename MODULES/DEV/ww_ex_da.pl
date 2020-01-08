#!/usr/bin/perl 
use strict;
use warnings;
use Getopt::Long;
use DBI;
use Spreadsheet::ParseExcel;



my $data;
my $file;
my $mm;
my $help; 
GetOptions ("mode=s" => \$mm, 
						"file=s" => \$data,
						"help|h" => \$help
						) or die "Error in cmd line arguments\n";

if (defined $help) {
			&help();
			exit;
}


sub help {
		print "$0 is the script name\n";
		print"
		Mode <Enter the mode of operation>
		file <Enter the file name>
		Ex : -mode r -file filename
		Ex : -mode w -file filename\n";
}






my ($hash,@header,@datarow);

## read excel sheet data

my $parser = Spreadsheet::ParseExcel->new();

my $workbook = $parser->parse('/home/srm/srinivas/Excel/tab.xls');

if ( !defined $workbook) {
		die parser->error(),"\n";
}

for my $worksheet ($workbook->worksheets())	{
#		print "$worksheet\n";
		my ($row_min,$row_max) = $worksheet->row_range();
		my ($col_min,$col_max) = $worksheet->col_range();
		
		for my $row ($row_min..$row_max) {
					my $this_set = {};
					my $pri_key;
					for my $col ($col_min..$col_max) {
								my $cell = $worksheet->get_cell($row,$col);
								if (defined $cell) {
										my $dd = $cell->value();
										#$datarow[$col] = $dd unless ($dd eq '');
										 unless ($dd eq '') {
													$datarow[$col] = $dd;
										 }
								} else {
										next;
								}
								## header 
								if ($row == 0) {
											$header[$col] = $datarow[$col];
								} else {
											if ($col == 0) {
														$pri_key = $datarow[$col];
											} else {
														my $key = $header[$col];
														my $val = $datarow[$col];
														$this_set->{$key} = $val;
											}
								}
					}
					if ($row > 0) {
								push @{$hash->{$pri_key}},$this_set;
					}
		}
}



use Data::Dumper;

print Dumper($hash);




































#!/usr/bin/perl
use strict;
use warnings;
use v5.10; # for say() function
 
use DBI;
 
# MySQL database configurations
my $dsn = "DBI:mysql:FTOS";
my $username = "root";
my $password = 'srm';
 
# connect to MySQL database
my %attr = ( PrintError=>0,  # turn off error reporting via warn()
             RaiseError=>1   # report error via die()
           );
my $dbh = DBI->connect($dsn,$username,$password,\%attr);
 
# query data from the links table
query_links($dbh);
 
# disconnect from the MySQL database
$dbh->disconnect();



sub query_links{
  # query from the links table
 
  my ($dbh) = @_;
	my $sql = "SELECT * FROM DATA";
#  my $sql = "SELECT title,
#                    url
#             FROM links";
  my $sth = $dbh->prepare($sql);
 
  # execute the query
  $sth->execute();

#	my @aa = $sth->fetchrow_array();
#	print"@aa\n";

  while(my @row = $sth->fetchrow_array()){
    # printf("%s\t%s\t%s\n",$row[0],$row[1],$row[2]);
		#print "$row[2]\n";
	#	 print "@row\n";
	   shift(@row);
		# print "@row\n";
  } 
  $sth->finish();
}



