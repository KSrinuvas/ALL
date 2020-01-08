#!/usr/bin/perl -w
use strict;

use DBI;

## mysql database configuration

my $dsn = "DBI:mysql:ASD";
my $user  = "root";
my $pw = "srm";

my %attr = (PrintError => 0,
						RaiseError => 1);


## connect to mysql database

my $dbh = DBI->connect($dsn,$user,$pw,\%attr); 


## create a table 

my @ddl = (

         "CREATE TABLE links (
             link_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
             title varchar(255) NOT NULL,
             url varchar(255) NOT NULL,
             target varchar(45) NOT NULL
          ) ENGINE=InnoDB" );




## execute all table statemets 

for my $sql (@ddl)	{
		$dbh->do($sql);
}


## insert data 

my %ls = (title=>'hello',url=>'hi',name=>'good');

my @links;

push(@links,\%ls);

my $ss = "INSERT INTO THE links(title,url,name)
					VALUES(?,?,?)";


my $stmt = $dbh->prepare($ss);
 
# execute the query
foreach my $link(@links){
  if($stmt->execute($link->{title}, $link->{url}, $link->{target})){
    print"link $link->{url} inserted successfully\n";
  }
 
}












$stmt->finish();

$dbh->disconnect();










# disconnect from the MySQL database
$dbh->disconnect();



