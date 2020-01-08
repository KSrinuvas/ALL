#!/usr/bin/perl -w
use strict;
use DBI;

## Mysql database configurations 

my $dsn = "DBI:mysql:perlmysqldb";
my $username = "root";
my $password = "srm";

## connect to mysql database 

my %attr = (PrintError=>0,RiseError=>1);

## connect to mysql database

my $dbh = DBI->connect($dsn,$username,$password,\%attr);

## create table statements 

my @ddl = (
					## create tags table
					"CREATE TABLE tags (
								tag_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
								tag varchar(255) NOT NULL
								) ENGINE=InnoDB;",
								## create links table 
								"CREATE TABLE links (
								link_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
								title varchar(255) NOT NULL,
								url varchar(255) NOT NULL,
								target varchar(45) NOT NULL
								) ENGINE=InnoDB;",
								"CREATE TABLE links_tags (
										link_id int(11) NOT NULL,
										tag_id int(11) NOT NULL,
										PRIMARY KEY (link_id,tag_id),
										KEY fk_link_idx (link_id),
										KEY fk_tag_idx (tag_id),
										CONSTRANCES fk_tags FOREIGN KEY (tag_id)
												REFERENCES tags (tag_id),
										CONSTRANCES fk_link FOREIGN KEY (tag_id)
												REFERENCES tags (tag_id)
								) ENGINE=InnoDB;",
								);

## execute all create table statements 


for my $sql (@ddl)	{
		$dbh->do($sql);
}

							
print"All tables created successfully\n";

## disconnect from the mysql database

$dbh->disconnect();



