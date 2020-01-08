#!/usr/bin/perl -w
use strict;
use DBI;


my $user = 'root';
my $pw = 'srm';



my $dsn = 'dbi:mysql:dbname=NameOfDatabase';
my $dbh = DBI->connect($dsn, $user, $pw,
{ RaiseError => 1, AutoCommit => 0 });

$dbh->do( qq(CREATE DATABASE NAME) );
print"successfully created database\n";

