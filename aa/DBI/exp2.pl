use strict;
use warnings;
use DBI; 

 
# definition of variables 
  
# name of the database. In this case, 
# the name of the database in my local 
# system is test. 
  
# user in this case is root 
my $user = "root"; 
# this is the password for root 
my $password = "srm";  
  
# connect to MySQL database 
my $dbh = DBI->connect ("DBI:mysql:OK", 
                        $user, 
                        $password)  
                        or die "Can't connect to database: $DBI::errstr\n"; 
  
print "connected to the database\n"; 
  
# the test database contains a table called emp  
# the schema : (id INTEGER PRIMARY KEY,  
#               name VARCHAR(10), salary INT, dept INT) 
# let us first insert some values 

=c
# prepare the query to  
# create the emp table 
my $sth = $dbh->prepare("CREATE TABLE emp44 (id INT PRIMARY KEY,  
                                         name VARCHAR(10),  
                                         salary INT, dept INT)"); 


  
# execute the query 
# now, the table is created 
$sth->execute(); 

=cut
my @aa = ([1,"ss",5,100],[2,'yy',11,200],[5,'yy',22,500]); 

my $size = 0;
foreach (@aa) {
		$size = @{$_};
}
print "$size\n";

my $str1 = "?," x $size;
chop($str1);



my $str = "?,?,?,?";

if ($str1 eq $str) {
		print "two strings are equaly\n";
}

# prepare the query
my $sth = $dbh->prepare("INSERT INTO emp44  
    	                    VALUES($str1)"); 
		

# define the variables to be inserted 
# into the table 
my $id = 1; 
my $name = "adith"; 
my $salary = 1000; 
my $dept = 2; 





foreach (@aa) {
		$sth->execute(@{$_}); 
}

#$sth->execute($id, $name, $salary, $dept); 
  
# insert some more rows into the table. 
#$sth->execute($id + 1, $name,  
 #             $salary + 100, $dept - 1); 
  
# insert more rows 
#$sth->execute($id + 2, "Tyrion", 
 #             $salary + 1000, $dept + 1); 
  
print "Successfully inserted values into the table\n"; 
  
# now, select all the rows from the table. 
$sth = $dbh->prepare("SELECT * FROM emp22"); 
  
# execute the query 
$sth->execute(); 
  
# Retrieve the results of a row of data and print 
print "\tQuery results:\n================================================\n"; 




=c
  
# fetch the contents of the table  
# row by row using fetchrow_array() function 
while (my @row = $sth->fetchrow_array())  
{ 
    print "@row\n"; 
} 
  
# if the function cannot be execute, show a warning. 
warn "Problem in retrieving results", $sth->errstr( ), "\n"
if $sth->err(); 
  
print "\n"; 
  
# select particular columns.  
  
# prepare the query 
$sth = $dbh->prepare("SELECT name, salary FROM emp"); 
  
# execute the query 
$sth->execute( ); 
  
# Retrieve the results of a row of data and print 
print "\tQuery results:\n================================================\n"; 
  
while(my ($name, $sal) = $sth->fetchrow_array())  
{ 
    print "Name: $name, salary: $sal\n"; 
} 
warn "Problem in retrieving results", $sth->errstr( ), "\n"
if $sth->err( ); 
  
# end of program 
exit;



=cut 
