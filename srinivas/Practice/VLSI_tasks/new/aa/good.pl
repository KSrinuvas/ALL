#!/usr/bin/perl -w
use strict;









my $dir = $ARGV[0];
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
				print"$data\n";
		} else {
				#print"$data\n";
		}
}


