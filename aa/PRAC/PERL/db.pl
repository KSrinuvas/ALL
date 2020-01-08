#!/usr/bin/perl
use strict;
use warnings;
use DBI;
use Data::Dumper;
## Read database table 

my $dbh = DBI->connect("DBI:mysql:FTOS",
						"root","srm",
						{"RaiseError" => 1,
						"PrintError" => 0}
						);

print "connect sthbase successfully\n";



my $sth = $dbh->prepare("select * from EMP_DATA12");
#$dbh->do("drop table FOO");
#$dbh->do("drop table EMP_DD");







$sth->execute();
my @aa = ();
while (my $ref = $sth->fetchrow_hashref()) {
	print "$ref->{'Name'}\n";
#	print Dumper($ref);
	push(@aa,$ref);
}

foreach (@aa) {
	print "$_->{'Name'}\n";
}



## Empid Name Age Salary Qualification Exp


## create table 


my $sth1 = $dbh->prepare("CREATE TABLE FOO (ID int , name varchar(20), salary int)" );
my $sth2 = $dbh->prepare("CREATE TABLE EMP_DD (Empid varchar(20),Name varchar(20), Age varchar(20), Salary varchar(20),
											Qualification varchar(20), Exp varchar(20))" );
$sth2->execute();

$sth1->execute();


$sth1 = $dbh->prepare("INSERT INTO FOO VALUES(?,?,?)");

my $id = 1;
my $name = "adith";
my $salary = 1000;


$sth1->execute($id,$name,$salary);


$sth2 = $dbh->prepare("INSERT INTO EMP_DD VALUES(?,?,?,?,?,?)");




foreach (@aa) {
	$sth2->execute($$_{'Empid'},$$_{'Name'},$$_{'Age'},$$_{'Salary'},$$_{'Qualification'},$$_{'Exp'});
}


	
