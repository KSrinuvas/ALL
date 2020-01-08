#!/usr/bin/perl -w
use strict;
use Getopt::Long;

my $help;
my $len;
GetOptions ('length|height=f' => \$len,
						'help|h' => \$help
						) or die ("Error in command line argument");

if (defined $len)	{
		print"$len\n";
}
							
sub help {
		print"$0 is the script name\n";
		print"do you want required length or height 
		Ex :$0 -length 15 or Aletrnative you want to chose 
		Ex :$0 -height 10\n";
}
if (defined $help)	{
		&help();						
}

