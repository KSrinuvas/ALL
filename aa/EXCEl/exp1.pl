#!/usr/bin/perl
use strict;
use warnings;

my %hash = ('a'=>1,'b'=>2,'c'=>3);
use DBI;

my $un = 'root';
my $ps = 'srm';

my %attr = (PrintError => 0,
						RiseError => 1
						);

my $dsn = "DBI:mysql:FTOS";

my $dbh = DBI->connect($dsn,$un,$ps,\%attr);

my @keys = keys %hash;
my @values = values %hash;


my @ddl = (CREATE TABLE KK "(S.no int(22) NOT NULL AUTO_INCREMENT PRIMARY KEY,a int(10) NOT NULL,b int(20) NOT NULL,
						c int(10) NOT NULL");

foreach (@ddl) {
		$dbh->do($_);
}

													


my $sth=$dbh->prepare("INSERT INTO KK (@keys) VALUES (@values)");
$sth->execute() or die "ERROR writing to database: $DBI::errstr $dbh->errstr";

