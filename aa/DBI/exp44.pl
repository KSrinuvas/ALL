use strict;
use warnings;
use DBI; 

my $user = "root"; 
my $password = "srm";  
# connect to MySQL database 
my $dbh = DBI->connect ("DBI:mysql:OK", 
                        $user, 
                        $password)  
                        or die "Can't connect to database: $DBI::errstr\n"; 
  
print "connected to the database\n"; 
  
my @aa = ([1,"ss",5,100],[2,'yy',11,200],[5,'yy',22,500]); 

my $size = 0;
foreach (@aa) {
		$size = @{$_};
}
print "$size\n";

my $str1 = "?," x $size;
chop($str1);

# prepare the query
my $sth = $dbh->prepare("INSERT INTO emp44  
    	                    VALUES($str1)"); 

foreach (@aa) {
		$sth->execute(@{$_}); 
}

$sth->finish();
$dbh->disconnect();  
print "Successfully inserted values into the table\n"; 
print "\tQuery results:\n================================================\n"; 



