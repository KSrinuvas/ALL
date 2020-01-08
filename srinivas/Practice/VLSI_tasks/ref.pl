#!/usr/bin/perl -w
use strict;


=c
my $yourFile = 'yourFile.txt';
open (my $data, '<', $yourFile) or die "Could not open $yourFile: $!";
=cut


my %hash;
my $key = '';
my $val = '';
while( my $line = <DATA>)  {   
		if ($line =~ /(\w+)\=(\w+\,)/)	{
				$key = $1;
				$hash{$key} = $2;
		} elsif ($line =~ /\=/)	{
				$hash{$`} = $';
		} else {
				$hash{$key} .=$line;
		}	
}


use Data::Dumper;

print Dumper(\%hash);





__END__
summary=[RTG_AutoJira] Standalone Jira Testing
issuetype=Action Item (TO DO)
priority=P2 -Medium
components=LibGen
project=SwiftMp16_A0
rundir=/home/RTGDev/subba/libgen/RTG_Start_MULTITRACK_195243_23Apr2019
description=Hello,


Please validate the RTG run errors with the below details.


Regards,
subbareddyb
