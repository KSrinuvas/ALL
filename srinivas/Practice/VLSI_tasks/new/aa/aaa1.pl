#!/usr/bin/perl -w
use strict;

my $path = $ARGV[0];

sub F1 {
		my ($tt) = @_;
	#	print"$tt\n";
#		if (not -d $tt)	{
			#	return;
#		}
		opendir(my $dd, $tt) || die "Not able to open '$tt' $!";
		while (my $data = readdir $dd)	{
		#		print"$data\n";
				my $cc = "$path/$data";
				if (($cc =~ /\.$/) or ($cc =~ /\.\.$/))	{
						#print"$cc\n";
						 next;
			  } 
				#print"$cc\n";
				 F2($cc);
		}
		closedir($dd);
}

F1($path);






sub F2 {
		my $gg = shift;
		#print"$gg\n";
		F1($gg);
}

