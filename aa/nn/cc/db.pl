#!/usr/bin/perl
use strict;
use warnings;
use DBI;




my @aa = (['srinu',22],['vas',23],['gg',25]);

## data base configuration

my $dsn = "DBI:mysql:FTOS";

my $user = "root";
my $pw = "srm";

my %attr = (PrintError => 0,
						RaiseError => 1);

## conncet database 

my $dbh = DBI->connect($dsn,$user,$pw,\%attr);

my @ddl = $dbh->prepare("CREATE TABLE ATOZ1 (SNo int(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
																					 NAME varchar(20) NOT NULL,
																					 AGE  int(10) NOT NULL
																					) ");


foreach (@ddl) {
		$dbh->do($_);
}

		


print "dbi successfully\n";



my $sth = $dbh->prepare("INSERT INTO ATOZ 
										VALUES ("SS",10)");

$sth->execute();

$sth->finish();

$dbh->disconnect();






