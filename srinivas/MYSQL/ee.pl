#!/usr/bin/perl
use strict;
use warnings;
use v5.10; # for say() function
 
use DBI;
 
# MySQL database configurations
my $dsn = "DBI:mysql:FTOS";
my $username = "root";
my $password = 'srm';
 
#say "Perl MySQL INSERT Demo";
 
# get user's input links
my @links = get_links();
 
# connect to MySQL database
my %attr = (PrintError=>0,RaiseError=>1 );
my $dbh = DBI->connect($dsn,$username,$password,\%attr);


my @ddl = (
             "CREATE TABLE EMP_DATA42 (Sno int(44) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            Empid VARCHAR(255) NOT NULL,
                            Name VARCHAR(250) NOT NULL,
                            Age int(10) NOT NULL,
                            Salary VARCHAR(20) NOT NULL,
                            Qualification VARCHAR(20) NOT NULL,
                            Exp VARCHAR(20) NOT NULL
                         )" );


foreach my $aa (@ddl) {
       $dbh->do($aa);
}


 
# insert data into the links table
my $sql = "INSERT INTO EMP_DATA42 (Empid,Name,Age,Salary,Qualification,Exp)
       VALUES(?,?,?,?,?,?)";
 
my $stmt = $dbh->prepare($sql);
 
# execute the query
foreach my $link(@links){
  if($stmt->execute($link->{Empid}, $link->{Name}, $link->{Age}, $link->{Salary}, $link->{Qualification}, $link->{Exp} )){
    say "link $link->{Name} inserted successfully";
  }
 
}
$stmt->finish();
 
# disconnect from the MySQL database
$dbh->disconnect();
 
sub get_links{
			
		
	 my @links = (
          {
            'Salary' => '25K',
            'Empid' => 'SRM01',
            'Qualification' => 'B.tech',
            'Name' => 'SUNIL',
            'Age' => '20',
            'Exp' => '2Years'
          },
          {
            'Salary' => '50k',
            'Name' => 'CHANDU',
            'Qualification' => 'M.tech',
            'Empid' => 'SRM02',
            'Age' => '22',
            'Exp' => '4Years'
          },
          {
            'Salary' => '40K',
            'Name' => 'RAM',
            'Qualification' => 'M.sc',
            'Empid' => 'SRM03',
            'Age' => '24',
            'Exp' => '3Years'
          },
          {
            'Name' => 'RAVI',
            'Qualification' => 'M.ca',
            'Empid' => 'SRM04',
            'Salary' => '35k',
            'Exp' => '2Years',
            'Age' => '22'
          }
        );

  		return @links;
}
