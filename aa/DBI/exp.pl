#!/usr/bin/perl
use strict;
use warnings;

use DBI;


## database configuration

print "Enter the your database name : ";
my $DATA = <STDIN>;
chomp($DATA);


## data source name 

my $dsn = "DBI:mysql:$DATA";

my $un = 'root';
my $pw = 'srm';


my %attr = (PrintError => 1,
            RaiseError => 0);

## connect the database handler

my $dbh = DBI->connect($dsn,$un,$pw,\%attr);

if (defined $dbh) {
		print "connect database $DATA successfully\n";
} else {
		exit;
}



print "Enter the table name : ";
my $tb = <STDIN>;
chomp($tb);



=c
my @ddl = (
           "CREATE TABLE $tb (Sno int(44) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            VTS_DEVICE_NO VARCHAR(255) NOT NULL,
                            name VARCHAR(250) NOT NULL
                         )" );



foreach my $aa (@ddl) {
       $dbh->do($aa);
}
my $sth = $dbh->prepare("INSERT INTO $tb
                     (VTS_DEVICE_NO,name)
                       values
                      (?,?)");
$sth->execute('45454as','dasdad');

=cut



my @array = ('A'..'Z');
my @num = (1..26);
my @arr;
my @dd;
foreach (@array) {
#		my @dd = ('Sno int(44) NOT NULL AUTO INCREMENT PRIMARY KEY','DATA VARCHAR(22) NOT NULL');
		push(@dd,"$_ VARCHAR(250) NOT NULL");
#		print "@dd\n";
}

foreach (@dd) {
		#print "$_\n";
		my @d1 = ('Sno int(44) NOT NULL AUTO INCREMENT PRIMARY KEY',$_);

		print "@d1\n";
}

