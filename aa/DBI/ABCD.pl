use strict;
use warnings;
use DBI; 

my $user = "root"; 
my $password = "srm";  
# connect to MySQL database 
my $dbh = DBI->connect ("DBI:mysql:FTOS", 
                        $user, 
                        $password)  
                        or die "Can't connect to database: $DBI::errstr\n"; 
  
print "connected to the database\n"; 




my @aa = (
					 ['SRM01','SUNIL',20,'25K','B.tech','2Years'],
           ['SRM02','CHANDU',22,'50k','M.tech','4Years'],
           ['SRM03','RAM',24,'40K','M.sc','3Years'],
           ['SRM04','RAVI',22,'35k','M.ca','2Years']
					);



  
#my @aa = ([1,"ss",5,100],[2,'yy',11,200],[5,'yy',22,500]); 

my $size = 0;
foreach (@aa) {
		$size = @{$_};
}
print "$size\n";

my $str1 = "?," x $size;
chop($str1);

# prepare the query
my $sth = $dbh->prepare("INSERT INTO EMP_DATA42  
    	                    VALUES($str1)"); 

foreach (@aa) {
		$sth->execute(@{$_}); 
}

$sth->finish();
$dbh->disconnect();  
print "Successfully inserted values into the table\n"; 
print "\tQuery results:\n================================================\n"; 



