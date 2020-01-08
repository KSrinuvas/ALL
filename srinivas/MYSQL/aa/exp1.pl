#!/usr/bin/perl -w
use strict;
use DBI;

my $driver = "mysql"; 
my $database = "OK";
my $dsn = "DBI:$driver:database=$database";
my $userid = "root";
my $password = "srm";

my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;


#print "database successfuly completed \n";




## table 

my @ddl = (
					"CREATE TABLE TEST_TABLE2 (Sno int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
														NAME varchar(255) NOT NULL,
														AGE varchar(255) NOT NULL
						) ENGINE = InnoDB");

## execute all create table 

for my $aa (@ddl)	{
		$dbh->do($aa);
}




my $name = "john";
my $age = 30;
my $sth = $dbh->prepare("INSERT INTO TEST_TABLE
                       (NAME,AGE)
                        values
                       (?,?)");




my %hash = (jon=>10,hh=>12,ll=>13,pp=>80);


while (my ($name,$age) = each (%hash) ) {
		$sth->execute($name,$age);
}
		

$sth->finish();

#$dbh->commit or die "$DBI::errstr";
$dbh->disconnect;








