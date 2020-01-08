#!/usr/bin/perl -w
use strict;

#print"Enter the tool name : ";
#my $cc = <STDIN>;
#homp($cc);
my $file = $ARGV[0];
open(IN,"$file") || die "Not able to open '$file' $!";
while (<IN>)	{
		chomp;
		bb($_);
#		my ($tool_name,$licen,$val,$val1) = split(/\t/);
		
#		if ($tool_name eq $cc)	{
#				print"licenc $licen is $val\n";
#		}
}


sub bb {
		my $line = shift;
		#testkomp users mreddypo 3
		if ($line =~ /\w+\s+\w+\s+(\w+)\s+(\d+)/)	{
				print"$1 => $2\n";
		}
}

































__END__
srinu	srinu@gmail.com	95689
vas	vas@gmail.com	924610
sunil	sunil@gmail.com	9246879
