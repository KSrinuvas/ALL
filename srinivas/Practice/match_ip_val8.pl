#!/usr/bin/perl -w
use strict;

my $ip = "my ip address is 22.236.192.02";

if ($ip =~ /(\d+)\.(\d+)\.(\d+)\.(\d+)/)	{
		if (($1 <= 255) && ($2 <= 255) && ($3 <= 255) && ($4 <= 255))	{
				print"ip address is valid\n";
		} else {
				print"IP address is not valid\n";
		}
}









## count the valid and not valid ip address in a file 

my $valid = 0;
my $not_valid = 0;
while (my $line = <DATA>)	{
		chomp($line);
		if ($line =~ /(\d+)\.(\d+)\.(\d+)\.(\d+)/)	{
				if (($1 <= 255) && ($2 <= 255) && ($3 <= 255) && ($4 <= 255))	{
						#print"ip address is valid\n";
						 $valid++;
				} else {
						#print"IP address is not valid\n";
						$not_valid++;
				}
		}
}

print"No of valid ip address in a file is : $valid\n";
print"No of not valid ip address in a file is : $not_valid\n"; 





__END__
my ip address is 22.236.192.02
my ip address is 122.236.192.02
my ip address is 222.236.192.02
my ip address is 322.236.192.02
my ip address is 122.236.192.02
my ip address is 22.236.192.302
my ip address is 22.236.192.02
my ip address is 22.236.192.02
my ip address is 22.236.192.02
my ip address is 22.236.192.302
my ip address is 22.236.192.02
my ip address is 22.236.192.02
my ip address is 22.236.192.302
my ip address is 22.236.192.02
my ip address is 22.236.192.02
my ip address is 22.236.192.302




