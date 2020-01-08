#!/usr/bin/perl -w
use strict;

use Getopt::Long;
my $help;
GetOptions ('length|height=f' => \&handler,
						'help|h' => \$help) || die ("Error in command line arguments");

sub help {
		print "$0 is script name\n";
		print "
		$0 -length 22
				(or) 
		$0 -height 22\n";
}

if (defined $help)	{
		&help();
} 
		


sub handler	{
		my ($opt,$val) = @_;
		print "optional name is $opt and value is $val\n";
}

		
