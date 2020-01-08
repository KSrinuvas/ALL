#!/usr/bin/perl -w
use strict;

use Getopt::Long;
my $verbose;
my $username;
my $help;

GetOptions ("username|user=s" => \$username, #string
					 "help|h" => \$help, #flag
					 "verbose" => \$verbose) #flag
					or die ("Error in command line argument\n");
					
					if (defined ($help))	{
							&help();
					} ## end if
					if (defined ($username))	{
								print"i am in this section\n";
								print"username : $username\n";
					} # end if

					
					sub help {
							print"$0 this script is used to do something\n";
							print"user|username <Enter user name><Mandatory>
							help|h <print script usage options>
						 	Ex: $0 -user srinu\n";
					} #end function


