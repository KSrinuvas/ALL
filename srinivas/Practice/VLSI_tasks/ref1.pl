#!/usr/bin/perl -w
use strict;

##----------------------------------------------
## Description: read the file and build the hash
##----------------------------------------------


my %hash;
my $key = '';
while (my $line = <DATA>)	{
		chomp($line);
	#	print"$line\n";
		if ($line =~ /(\w+)=(\w+\,.*)/)	{
			#	print"$&\n";
				$key = $1;
				$hash{$key} = $2;
		} elsif ($line =~ /\=/)	{
				$hash{$`} = $';       ### s` -> it matches the prematch $' -> it matches post match
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

