#!/usr/bin/perl
use strict;
use warnings;
use v5.10; # for say() function
 
use DBI;
 
# MySQL database configurations
my $dsn = "DBI:mysql:KK";
my $username = "root";
my $password = 'srm';






 
say "Perl MySQL INSERT Demo";
 
# get user's input links
#my @links = get_links();

my %hash = ('language' => 'perl','path' => "/home/srm/");


my @array;


push (@array,\%hash); 
 
# connect to MySQL database
my %attr = (PrintError=>0,RaiseError=>1 );
my $dbh = DBI->connect($dsn,$username,$password,\%attr);



 ## create a table 

my @ddl = (
				"CREATE TABLE links(language varchar(255) NOT NULL,
														 path varchar(255) NOT NULL)" );

foreach my $aa (@ddl)	{
		$dbh->do($aa);
}



# insert data into the links table
my $sql = "INSERT INTO links(language,path)
       VALUES(?,?)";
 
my $stmt = $dbh->prepare($sql);
 
# execute the query
foreach my $link (@array){
  if($stmt->execute($link->{language}, $link->{path}) ){
    print"link $link->{language} inserted successfully";
  }
 
}
$stmt->finish();
 
# disconnect from the MySQL database
$dbh->disconnect();









=c

 
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



=cut

