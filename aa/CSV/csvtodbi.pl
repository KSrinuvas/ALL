#!/usr/bin/perl
use strict;
use warnings;
use Text::CSV;
use DBI;

#############################################################
# Convert CSV file format to the data base format,          #                                                
# Read the csv file and build the hash referance,           #                  
# Take a hash referance I/P,To Write a new database table   #                     
#############################################################


## To read csv file Emp.csv

my $csv = Text::CSV->new({ sep_char => ',' });

my $file = 'Emp.csv';

open(IN,$file) || die "Not able to open file $!";



my $hash;
my @hh;
my $head = <IN>;
chomp($head);
if ($csv->parse($head)) {
		@hh = $csv->fields();
}
#print "@hh\n";

shift(@hh);

while (my $line = <IN>)	{
		chomp($line);
#		print "$line\n";
		if ($csv->parse($line))	{
				my @array = $csv->fields();
			#	print "@array\n";
				my $pri = shift(@array);
				for (my $i = 0; $i < @array; $i++)	{
					#	print "$array[$i]  ";
					$$hash{$pri}{$hh[$i]} = $array[$i];
				}
				#print "\n";
		} else {		
				warn "Line could not be parsed : $line\n";
		}
}

close(IN);

use Data::Dumper;

print Dumper($hash);


=c

## database configuration
my $dsn = "DBI:mysql:FTOS";
my $username = 'root';
my $password = 'srm';

# connet to the mysql database
my %attr = (PrintError => 1,
						RaiseError => 0);

my $dbh = DBI->connect($dsn,$username,$password,\%attr);

print "successfully\n";

## create table

=c

my $sth;

while (my ($k1,$v1) = each (%{$Main_ref}) ) {
    print "$k1=>\n";
    if (ref($v1) eq 'HASH') {
        while (my ($k2,$v2) = each ( %{$v1} ) ) {
          # print "    $k2 => $v2\n";
            my @ddl = (
                      "CREATE TABLE DATA4 (Sno int(44) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                              VTS_DEVICE_NO VARCHAR(255) NOT NULL,
                              $k2 VARCHAR(250) NOT NULL
                        )" );

            foreach my $aa (@ddl) {
                 $dbh->do($aa);
            }

            $sth = $dbh->prepare("INSERT INTO DATA4
                       (VTS_DEVICE_NO,$k2)
                        values
                       ($k1,$v2)");
#           $sth->execute($k1,$v2)
#                 or die $DBI::errstr;
        }
    }
}



$sth->finish();

$dbh->disconnect();
=cut

my $sth;
while (my ($k,$v) = each (%{$hash}) ) {
		print "$k => $v\n";
=c
		my @ddl = (
               "CREATE TABLE DATA22 (Sno int(44) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                  $k VARCHAR(250) NOT NULL
                  $k VARCHAR(250) NOT NULL
                   )" );
=cut
		my @ddl = (
               "CREATE TABLE DATA22 (Sno int(44) NOT NULL AUTO_INCREMENT PRIMARY KEY");
		push(@ddl,'$k VARCHAR(250) NOT NULL');
		foreach (@ddl) {
				$dbh->do($_);
		}
		$sth = $dbh->prepare("INSERT INTO DATA4
                           (VTS_DEVICE_NO,$k2)
                           values
    	                     ($k1,$v2)");

}



$dbh->disconnect();

=cut
