#!/usr/bin/perl -w
use strict;
use Getopt::Long;

##-----------------------------------------------------
## 
##-----------------------------------------------------


my $dir;
my $help;
GetOptions ("dir=s" => \$dir, ## string
						"help|h" => \$help)
						or die ("Error in command line arguments\n");

if (defined $help)	{
		help();
}

sub help {
		print"$0 is the script name\n";
		print"
		dir <Enter the path><mandatory>
		Ex : $0 -dir /home/srm/fdf\n";
}


## function call
Fun1($dir);

sub Fun1 {
		my $data = shift;
		my @files = glob("$data/*");
		foreach @files {
				print"$_\n";	
		}
}






					










