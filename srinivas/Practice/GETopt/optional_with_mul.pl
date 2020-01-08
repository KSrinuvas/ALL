#!/usr/bin/perl -w
use strict;
use Getopt::Long;

my @age;
my @name;
my $help;
##------------------------------------------------
## Options with multiple values
##------------------------------------------------

GetOptions (
						'name=s' => \@name,
						'age=i' => \@age,
						'help|h' => \$help);
if (defined $help)	{
		&help();
}

sub help {
		print"$0 is the script name\n";
		print"
		name <Enter the name><madatory>
		age <Enter the age><madatory>
		Ex: -name ss -age 5 -name vv -age 10 ...\n";
}





#print "names is : @name\n";
#print "age is   : @age\n";


my $i = 0;
if (@age == @name) {
		print"both arrays are eaqual\n";
		while ($i < @age)	{
				print"$name[$i]  => $age[$i]\n";
				$i++;
		}
}





