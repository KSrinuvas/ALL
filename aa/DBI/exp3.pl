use strict;
use warnings;
use DBI; 


my @aa = (
          [
            'SRM01',
            'SUNIL',
             20,
            '25K',
            'B.tech',
            '2Years'
          ],
          [
            'SRM02',
            'CHANDU',
             22,
            '50k',
            'M.tech',
            '4Years'
          ],
          [
            'SRM03',
            'RAM',
             24,
            '40K',
            'M.sc',
            '3Years'
          ],
          [
            'SRM04',
            'RAVI',
             22,
            '35k',
            'M.ca',
            '2Years'
          ]
        );



# definition of variables 
  
# name of the database. In this case, 
# the name of the database in my local 
# system is test. 
  
# user in this case is root 
my $user = "root"; 
# this is the password for root 
my $password = "srm";  
  
# connect to MySQL database 
my $dbh = DBI->connect ("DBI:mysql:FTOS", 
                        $user, 
                        $password)  
                        or die "Can't connect to database: $DBI::errstr\n"; 
  
print "connected to the database\n"; 
  

my $size = 0;
foreach (@aa) {
		$size = @{$_};
}
print "$size\n";


my $str1 = "?," x $size;
chop($str1);




print "$str1\n";


# prepare the query
my $sth = $dbh->prepare("INSERT INTO ABCD  
    	                    VALUES($str1)"); 
		


foreach (@aa) {
		$sth->execute(@{$_}); 
}

  
print "Successfully inserted values into the table\n"; 
  
# now, select all the rows from the table. 
$sth = $dbh->prepare("SELECT * FROM ABCD"); 
  
# execute the query 
#$sth->execute(); 
  
# Retrieve the results of a row of data and print 
print "\tQuery results:\n================================================\n"; 



