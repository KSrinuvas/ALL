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



fun1($dir);
sub fun1 {
		my $dir1 = shift;
		my @files = glob("$dir1/*");
		foreach my $files(@files){
    		#print "$files\n";
				 fun2($files);
		}
}


sub fun2 {
		my $data = shift;
		if (-d $data)	{
			#	print"$data\n";
				fun1($data);
		} elsif (-f $data and $data =~ /.*\.pl$/)	{
	#			print"$data\n";
		} elsif (-f $data and $data =~ /.*\.tcl$/)	{
			#	print"$data\n";
		} elsif (-f $data and $data =~ /.*\.py$/)	{
			#	print"$data\n";
		} else {
				print"$data\n";
		}
}



					










