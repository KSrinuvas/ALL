#!/usr/bin/perl
use strict;
use warnings;

use DBI;

## database configuration

my $dsn = "DBI:mysql:FTOS";
my $username = "root";
my $password = "srm";
my %attr = (PrintError => 0,
						RiseError => 1
					);

## connect database 

my $dbh = DBI->connect($dsn,$username,$password,\%attr);


my $sth = $dbh->prepare("CREATE TABLE USERS (S.no INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                              Name VARCHAR(10) NOT NULL,
																							Empid VARCHAR(255) NOT NULL,
																							Name VARCHAR(255) NOT NULL,Age INT(30) NOT NULL, 
																							Salary VARCHAR(255) NOT NULL,
																							Qualification VARCHAR(255) NOT NULL, 
                                              Exp VARCHAR(255) NOT NULL)");




print "successfully\n";
