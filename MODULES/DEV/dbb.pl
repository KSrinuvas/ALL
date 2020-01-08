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

	my @aa = $sth->fetchrow_array();
	print"@aa\n";

  while(my @row = $sth->fetchrow_array()){
    # printf("%s\t%s\t%s\n",$row[0],$row[1],$row[2]);
		#print "$row[2]\n";
		 print "@row\n";
  } 
  $sth->finish();
}


