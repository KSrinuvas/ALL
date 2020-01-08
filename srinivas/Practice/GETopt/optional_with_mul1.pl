#!/usr/bin/perl -w
use strict;
use Getopt::Long;

##---------------------------------
## optional with mutiple values 
##---------------------------------

## varibles 
my $name;
my $age;
my $help;

GetOptions ('name=s@' => \$name, # string
						'age=i@' => \$age,   # integer
						'help|h' => \$help,  #flag
					 ) or Die ("Error in command line argument");

sub help {
		print"$0 is the script name\n";
		print"
		name <Enter the name><mandatory>,
		age <Enter the age><madatory>,
		Ex:$0 -name ss -age 10 -name vv -age 5 ....\n";
}

&help();

print "@{$name}\n";
print "@{$age}\n";
