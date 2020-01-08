#!/usr/bin/perl
use strict;
use warnings;
use v5.10; # for say() function
 
use DBI;
 
# MySQL database configurations
my $dsn = "DBI:mysql:OK";
my $username = "root";
my $password = 'srm';
 
say "Perl MySQL INSERT Demo";
 
# get user's input links
my @links = get_links();
 
# connect to MySQL database
my %attr = (PrintError=>0,RaiseError=>1 );
my $dbh = DBI->connect($dsn,$username,$password,\%attr);

my @ddl = ("CREATE TABLE SS (SNO INT(22) AUTO_INCREMENT PRIMARY KEY,
														 title VARCHAR(20) NOT NULL,
														 url VARCHAR(20) NOT NULL,
														 target VARCHAR(20) NOT NULL)");

foreach (@ddl) {
		$dbh->do($_);
}											 
 
# insert data into the links table
my $sql = "INSERT INTO SS (title,url,target)
       VALUES(?,?,?)";
 
my $stmt = $dbh->prepare($sql);
 
# execute the query
foreach my $link(@links){
  if($stmt->execute($link->{title}, $link->{url}, $link->{target})){
    say "link $link->{url} inserted successfully";
  }
 
}
$stmt->finish();
 
# disconnect from the MySQL database
$dbh->disconnect();
 
sub get_links{
   my $cmd = '';
   my @links;
   # get links from the command line
   my($title,$url,$target);
 
   # repeatedly ask for link data from command line
   do{
     say "title:";
     chomp($title = <STDIN>); 
 
     say "url:";
     chomp($url = <STDIN>);
 
     say "target:";
     chomp($target = <STDIN>);
 
     #
     my %link = (title=> $title, url=> $url, target=> $target);
 
     push(@links,\%link);
 
     print("\nDo you want to insert another link? (Y/N)?");
     chomp($cmd = <STDIN>);
     $cmd = uc($cmd);
   }until($cmd eq 'N');
 
   return @links;
}
