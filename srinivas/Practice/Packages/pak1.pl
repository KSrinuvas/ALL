#!/usr/bin/perl -w
use strict;
my $a = 10;
print "value of \$a is : $a\n";


my $name = "srinu";

print "the \$name is : $name\n";

BEGIN {
		print "###############################\n";
		print "the code is begin\n";
		print "###############################\n\n";
} 

END {
		print "\n###############################\n";
		print "the code is END\n";
		print "###############################\n";
}



print "this is srinu\n";


## collect the word with out duplicates 


my %hash;
while (<DATA>)	{
		chomp;
		$_ = join' ',split(' ');  ## to skip the withe spaces 
		next if /^$/; ## skip the empty line in a file 
		next if /^\#/; ## skip the commewnting lines in a file 
	#	print"$_\n";
		foreach (split(/ /))	{
				#print"$_\n";
				next if (defined $hash{$_});
				$hash{$_}++;
				#print "$_\n";
		} 
}


use Data::Dumper;

print Dumper (\%hash);


my @unic = keys %hash;

print Dumper (\@unic);










__END__
hello

how are you 

good       morning 

good     bye 
ok

ok ok         ok

ok

ok

 ok   ok   ok



fine 

thank     you        

good     night     bye 




dfgdf


#### commenting line 
#### commenting line 
#### commenting line 

#


#### commenting line 


